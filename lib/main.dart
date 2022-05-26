import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Calen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/note.jpg'),
            fit: BoxFit.cover
            ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => Calendar()));
                  }
                );
              }
            ),
            centerTitle: true,
            title: Text("${getToday()}"),
          ),
          body: Text("aa"),
        ),
      )
    );
  }
}

String getToday() {
  DateTime now = DateTime.now();
  String formatter = DateFormat("yyyy-MM-dd").format(now);
  return formatter;
}
