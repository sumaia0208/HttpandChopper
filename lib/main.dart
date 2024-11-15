import 'package:http/http.dart' as http;
import 'dart:convert'; // For JSON decoding

void main() async {
  // The URL of the API endpoint
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

  try {
    // Send an HTTP GET request
    final response = await http.get(url);

    // Check if the response was successful
    if (response.statusCode == 200) {
      // Parse the JSON response
      Map<String, dynamic> data = json.decode(response.body);

      // Access specific fields from the parsed data
      print('ID: ${data['id']}');
      print('Title: ${data['title']}');
      print('Body: ${data['body']}');
    } else {
      print('Failed to fetch data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error occurred: $e');
  }
}