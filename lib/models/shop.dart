import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: "Salmon Sushi",
      price: "20.00",
      imagePath: 'images/sushi3.png',
      rating: '4.9',
    ),
    Food(
      name: "Tuna Nigiri",
      price: "20.00",
      imagePath: 'images/sushi4.png',
      rating: '4.9',
    ),
  ];

  List<Food> _cart = [];
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food foodItem) {
    _cart.remove(foodItem);
    notifyListeners();
  }
}
