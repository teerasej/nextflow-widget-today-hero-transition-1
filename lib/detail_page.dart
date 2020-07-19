import 'package:flutter/material.dart';
import 'package:nextflow_hero_transition_1/course_model.dart';

class DetailPage extends StatelessWidget {
  CourseModel course;

  DetailPage({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course name'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Hero(
            tag: 'course_${course.name}',
            child: Image(
              image: AssetImage(course.imageLocation),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              course.name,
              style: TextStyle(fontSize: 36),
            ),
          )
        ],
      ),
    );
  }
}
