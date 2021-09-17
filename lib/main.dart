import 'package:flutter/material.dart';
import 'package:flutter_facebook_story/controller/scroll_controller.dart';
import 'package:flutter_facebook_story/controller/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final StoryController controller = StoryController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                child: StoryView(
                  controller: controller,
                  storyItems: [
                    StoryItem.text(
                      title:
                          "Hello,My name is Quan \n and this is facebook story example",
                      backgroundColor: Colors.blueAccent,
                      textStyle: TextStyle(
                        fontFamily: 'Dancing',
                        fontSize: 30,
                      ),
                    ),
                    StoryItem.text(
                      title: "Hope you like this!",
                      backgroundColor: Colors.green,
                      textStyle: TextStyle(
                        fontFamily: 'Dancing',
                        fontSize: 40,
                      ),
                    ),
                    StoryItem.pageImage(
                      url:
                          "https://s3-prod.dogtopia.com/wp-content/uploads/sites/241/2021/03/Puppy-3.jpg",
                      caption: "Just image",
                      controller: controller,
                    ),
                    StoryItem.pageImage(
                        url:
                            "https://c.tenor.com/QAN9RxLUSxUAAAAM/cat-cute.gif",
                        caption: "And Gifs",
                        controller: controller,
                        duration: Duration(seconds: 4)),
                    StoryItem.pageImage(
                        url:
                            "https://c.tenor.com/5G7cEiESNgEAAAAM/cheese-silly-cat.gif",
                        caption: "Gifs,gifs,gifs",
                        controller: controller,
                        duration: Duration(seconds: 5)),
                  ],
                  progressPosition: ProgressPosition.top,
                  repeat: false,
                  inline: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
