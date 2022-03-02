// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(ListView());
}

class ListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListViewPageState();
  }
}

class ListViewPageState extends State<ListViewPage> {
  List cases = [
    {"address": "180 Cao Thắng, Q.10, TP.HCM", "resolve": false, "num": 10},
    {"address": "8 Nguyễn Văn Tráng, Q.1, TP.HCM", "resolve": false, "num": 7},
    {"address": "279 Trần Nhân Tôn, Q.10, TP.HCM", "resolve": true, "num": 5},
    {"address": "1 Đường số 19,BHHA,Q.Bình Tân...", "resolve": false, "num": 1}
  ];
  void doingsomething() {}
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size);
    return MaterialApp(
      home: Scaffold(
        body: (Column(
          children: [
            Container(
              width: size.width,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Total cases: ${cases.length}',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 0.15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Resolved: 1',
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 0.15,
                          fontWeight: FontWeight.w500),
                    ),
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 42),
              child: Column(
                children: [
                  for (var i in cases)
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius:1,
                                blurRadius: 7,
                                offset:
                                    Offset(0,10), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: doingsomething,
                            style: ElevatedButton.styleFrom(
                              primary: i['resolve'] == true
                                  ? Color(0xff219653)
                                  : Color(0xffE0E0E0),
                              minimumSize:
                                  Size(size.width * 0.5, size.height * 0.07),
                            ),
                            child: Container(
                              width: size.width * 0.8,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    i['address'],
                                    style: TextStyle(
                                        color: i['resolve'] == true
                                            ? Color(0xffFFFFFF)
                                            : Color(0xff000000),
                                        letterSpacing: 0.5),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          IconData(0xe22d,
                                              fontFamily: 'MaterialIcons'),
                                          color: i['resolve'] == true
                                              ? Color(0xffFFFFFF)
                                              : Color(0xff000000),
                                        ),
                                        Text(
                                          i['num'].toString(),
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: i['resolve'] == true
                                                  ? Color(0xffFFFFFF)
                                                  : Color(0xff000000)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                      ],
                    )
                ],
              ),
            ),
            SizedBox(height: size.height * 0.35),
            ElevatedButton(
              onPressed: doingsomething,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(size.width, size.height * 0.07),
                primary: Colors.white,
              ),
              child: Text(
                'CHILD ABUSING REPORT',
                style: TextStyle(
                    color: Color(0xff219653),
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 1.25),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
