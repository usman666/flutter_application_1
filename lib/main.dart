
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
//import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main(List<String> args) {
  runApp(
    const HNGAPP(),
  );
}

class HNGAPP extends StatelessWidget {
  const HNGAPP({super.key});

  @override
  Widget build(BuildContext context) {
    final websiteUri = Uri.parse("https://github.com/usman666");
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 100.0,
                  foregroundImage: AssetImage('assets/usman.png'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Ali Usman",
                style: TextStyle(fontSize: 20, fontFamily: "arial"),
              ),
              const SizedBox(
                height: 10,
              ),
            
              ElevatedButton(
                onPressed: (() async {
                  launchUrl(
                    websiteUri,
                    mode: LaunchMode.inAppWebView,//launch uri in app
                  );
                
                  
                 
                   
                
                }),
                child: const Text(
                  "Github",
                ),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
