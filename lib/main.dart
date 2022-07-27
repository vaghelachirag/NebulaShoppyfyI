import 'package:flutter/material.dart';
import 'package:nebulashoppy/screen/splash.dart';
import 'package:nebulashoppy/screen/test.dart';
import 'package:provider/provider.dart';
import 'widget/cartCounter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return ChangeNotifierProvider(
      create: (context) => CartCounter(),
      child: MaterialApp(
        home: Splash(),
        theme: ThemeData(
            fontFamily: 'Roboto',
            primaryColor: Colors.white,
            primaryColorDark: Colors.white,
            backgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
