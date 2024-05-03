// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    void addOne() {
      setState(() {
        value++;
      });

      print(value);
    }

    void sustractOne() {
      setState(() {
        value--;
      });
      print(value);
    }

    void resetValue() {
      setState(() {
        value = 0;
      });
      print(value);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(195, 214, 152, 36),
        appBar: AppBar(
            title: Text("Hello Citizens of Vault 33"),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 190, 102, 75),
            elevation: 2,
            leading: Icon(Icons.menu_book),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))]),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(118, 179, 114, 61),
                  child: Center(
                    child: Text(
                      value.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white),
                    ),
                  )),
              Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(118, 179, 114, 61),
                  child: ElevatedButton(onPressed: addOne, child: Text("+1"))),
              Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(118, 179, 114, 61),
                  child: ElevatedButton(
                      onPressed: resetValue, child: Text("Reset Value"))),
              Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(118, 179, 114, 61),
                  child:
                      ElevatedButton(onPressed: sustractOne, child: Text("-1")))
            ],
          ),
        ),
      ),
    );
  }
}
