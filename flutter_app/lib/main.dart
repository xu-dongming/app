import 'package:flutter/material.dart';
import 'package:flutterapp/provide/current_index_provide.dart';
import './config/index.dart';
import './provide/current_index_provide.dart';
import 'package:provide/provide.dart';
import './pages/index_page.dart';
import './pages/cart_page.dart';
import './pages/category_page.dart';
import './pages/member_page.dart';

void main(){

  var currentIndexProvide = CurrentIndexProvide();
  var providers = Providers();
  providers
    ..provide(Provider<CurrentIndexProvide>.value(currentIndexProvide));

  runApp(ProviderNode(child: MyApp(), providers: providers,));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: MaterialApp(
        title: KString.mainTitle,//花花小说网
        debugShowCheckedModeBanner: false,
        //定制主题
        theme: ThemeData(
          primaryColor: KColor.primaryColor,
        ),
        home: IndexPage(),
      ),

    );
  }

}
