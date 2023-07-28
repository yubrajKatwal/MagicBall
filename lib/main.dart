import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const EightBAll());
}

class EightBAll extends StatefulWidget {
  const EightBAll({super.key});

  @override
  State<EightBAll> createState() => _EightBAllState();
}

class _EightBAllState extends State<EightBAll> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var Askme = '6';
  void generateRandom(){
    Random random = new Random();
    int randomNumber = random.nextInt(6)+1;
    Askme = randomNumber.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: GestureDetector(
        onTap:(){
          setState(() {
            generateRandom();
          });
        },
          child: Center(
              child: Image.asset(
        'assets/ball$Askme.png',
        scale: 2.5,
      ))),
    );
  }
}
