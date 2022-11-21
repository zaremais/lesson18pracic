void main() {
// Student s = Student(firstName: "Max", lastName: "Petrov", group: "1", averageMark: 5.0);
// print(s.getScolarship());
// Aspirant a = Aspirant(firstName: "Ivan",lastName: "Ivanov", group: "5", averageMark: 5.0, scientificWork: "OOP");
// print(a.getScolarship());

// Dog d = Dog(food: 'meat', location: 'Bishkek', name: 'Rexs', color: "brown");
// d.makeNoise();
// d.eat();
// d.sleep();
// Cat c = Cat(food: 'milk', location: 'Bishkek', name: 'Kisa', color: "white");
// c.makeNoise();
// c.eat();
// c.sleep();
// Horse h = Horse(food: 'hay', location: 'Bishkek', name: 'Mustang', color: "grey");
// h.makeNoise();
// h.eat();
// h.sleep();

// Country kg = Country(name: 'Kyrgyzstan', climate: "Changable");
// kg.info();
// print(kg.info1());

// Car avto = Car(power: 3.5, brand: "BMW", color: "черный", price: 1000);
// print(avto.carInfo());

//  Phone firstPhone = Phone(number: 123456, model: "X", weight: 300.0);
//  firstPhone.info();
//  Phone secondPhone = Phone(number: 1234567, model: "XX", weight: 300.0);
//  secondPhone.info();
//  Phone thirdPhone = Phone(number: 12345678, model: "XXX", weight: 300.0);
//  thirdPhone.info();

//  Nikola name = Nikola();
//  name.printName(name: "Максим", age: 20);

// Math c = Math(a: 50, b: 5 );
// c.ab();
// c.addition();
// c.multiplication();
// c.division();
// c.subtaction();

// Car1 truck = Car1(color: "серый", type: "грузовой", year: 2020);
// truck.startCar();
// truck.stopCar();
// truck.yearCar();
// truck.typeCar();
// truck.colorCar();

// TriangleChecker side = TriangleChecker(a: 7, b: 5, c: 3);
// print(side.is_triangle());

// MyString stroka = MyString(change: "машина");
// print(stroka.reverse());
// print(stroka.ucFirst());
}

// 1)Создайте пример наследования, реализуйте класс Student (родительский класс)и класс Aspirant,
// аспирант отличается от студента наличием некой научной работы.

class Student {
  String firstName;
  String lastName;
  String group;
  double averageMark;

  Student({
    required this.firstName,
    required this.lastName,
    required this.group,
    required this.averageMark,
  });

// в) Создать метод getScholarship() для класса Student, который возвращает сумму стипендии.
// Если средняя оценка студента равна 5, то сумма 20000 сом, иначе 0.

  int getScolarship() {
    int sum = 20000;
    int sum1 = 0;
    print(
        "firstname: $firstName, lastname: $lastName, group: $group, averagemark: $averageMark");
    if (averageMark == 5.0) {
      return sum;
    } else {
      return sum1;
    }
  }
}

// б) Создать класс Aspirant, который наследуется от Student.
//  Переопределить этот метод
// в классе Aspirant.  Если средняя оценка аспиранта равна 5, то сумма 40000 сом, иначе 18000.

class Aspirant extends Student {
  String scientificWork;
  Aspirant({
    required this.scientificWork,
    required super.firstName,
    required super.lastName,
    required super.group,
    required super.averageMark,
  });

  @override
  int getScolarship() {
    int sum = 40000;
    int sum1 = 18000;
    print(
        "firstname: $firstName, lastname: $lastName, group: $group, averagemark: $averageMark, научная работа: $scientificWork");
    if (averageMark == 5.0) {
      return sum;
    } else {
      return sum1;
    }
  }
}

// 2)Создать класс Animal и расширяющие его классы Dog, Cat, Horse. Класс Animal содержит переменные food, location и методы makeNoise,
//  eat, sleep. Метод sleep например, может выводить на консоль "Такое то животное спит". Dog, Cat, Horse переопределяют методы makeNoise,
//   eat.Добавьте переменные в классы Dog, Cat, Horse, характеризующие только этих животных.

class Animal {
  String food;
  String location;

  Animal({
    required this.food,
    required this.location,
  });

  void makeNoise() {}
  void eat() {}
  void sleep() {}
}

class Dog extends Animal {
  String name;
  String color;

  Dog({
    required super.food,
    required super.location,
    required this.name,
    required this.color,
  });

  @override
  void makeNoise() {
    print("\Dog\nкличка: $name\nрасположение: $location");
  }

  @override
  eat() {
    print("еда: $food");
  }

  sleep() {
    print("$name is sleeping");
  }
}

class Cat extends Animal {
  String name;
  String color;

  Cat({
    required super.food,
    required super.location,
    required this.name,
    required this.color,
  });

  @override
  void makeNoise() {
    print("\Cat\nкличка: $name\nрасположение: $location");
  }

  @override
  void eat() {
    print("еда: $food");
  }

  void sleep() {
    print("$name is sleeping");
  }
}

class Horse extends Animal {
  String name;
  String color;

  Horse({
    required super.food,
    required super.location,
    required this.name,
    required this.color,
  });

  @override
  void makeNoise() {
    print("\Horse\nкличка: $name\nрасположение: $location");
  }

  @override
  void eat() {
    print("еда: $food");
  }

  void sleep() {
    print("$name is sleeping");
  }
}

// Надо создать два класса а именно Country and Car
// 1) Country - класс имеет поле название, климат и метод описание
// 1 вариант (метод должен принтануть значения)
// 2 вариант (метод должен не принтовать, а возвращать "return" название,
// место и климат)

class Country {
  String name;
  String climate;

  Country({
    required this.name,
    required this.climate,
  });

  void info() {
    print("$name, $climate");
  }

  String info1() {
    return "название: $name, климат: $climate";
  }
}

// 2) Car - имеет поле мощность, цвет, название, цена и метод описание (метод
// должен не принтовать, а возвращать "return" характеристики машины)

class Car {
  double power;
  String color;
  String brand;
  int price;

  Car({
    required this.power,
    required this.brand,
    required this.color,
    required this.price,
  });

  String carInfo() {
    return "мощность: $power, название: $brand, цвет: $color, цена: $price";
  }
}

//3)Создайте класс Phone, который содержит
//переменные number, model и weight.
//1 Создайте три экземпляра этого класса.
//2 Выведите на консоль значения их переменных.

class Phone {
  int number;
  String model;
  double weight;

  Phone({
    required this.number,
    required this.model,
    required this.weight,
  });

  info() {
    print("number: $number\nmodel: $model\nweight: $weight");
  }
}

// 1)Николай – оригинальный человек.
// Он решил создать класс Nikola, принимающий при инициализации 2
// параметра: имя и возраст. Но на этом он не успокоился.
// Не важно, какое имя передаст пользователь при создании экземпляра, оно
// всегда будет содержать “Николая”.
// В частности - если пользователя на самом деле зовут Николаем, то с именем
// ничего не произойдет, а если его зовут, например, Максим, то оно
// преобразуется в “Я не Максим, а Николай”.

class Nikola {
  String? name;
  int? age;

  void printName({
    required name,
    required age,
  }) {
    if (name != "Николай") {
      print("Я не $name, а Николай.");
    }
  }
}

// 2)Напишите программу с классом Math. Создайте два атрибута — a и b.
// Напишите методы addition — сложение, multiplication —
// умножение, division — деление, subtraction — вычитание. При передаче в
// методы параметров a и b с ними нужно производить соответствующие
// действия и печатать ответ.

class Math {
  int a;
  int b;

  Math({required this.a, required this.b});

  void ab() {
    print("a = $a, b = $b");
  }

  void addition() {
    print("$a + $b = ${a + b}; ");
  }

  void multiplication() {
    print("$a * $b = ${a * b};");
  }

  void division() {
    print("$a / $b = ${a / b};");
  }

  void subtaction() {
    print("$a - $b = ${a - b};");
  }
}

// 3)Напишите программу с классом Car. Создайте конструктор класса Car.
// Создайте атрибуты класса Car — color (цвет), type (тип), year (год). Напишите
// пять методов. Первый — запуск автомобиля, при его вызове выводится
// сообщение «Автомобиль заведен». Второй — отключение автомобиля —
// выводит сообщение «Автомобиль заглушен». Третий — присвоение
// автомобилю года выпуска. Четвертый метод — присвоение автомобилю типа.
// Пятый — присвоение автомобилю цвета

class Car1 {
  String color;
  String type;
  int year;

  Car1({
    required this.color,
    required this.type,
    required this.year,
  });

  void car1Info() {
    print("color: $color, type: $type, year: $year");
  }

  void startCar() {
    print("Автомобиль заведен");
  }

  void stopCar() {
    print("Автомобиль заглушен");
  }

  void yearCar() {
    print("год: $year");
  }

  void typeCar() {
    print("тип: $type");
  }

  void colorCar() {
    print("цвет: $color");
  }
}

// 4) Николаю требуется проверить, возможно ли из представленных отрезков
// условной длины сформировать треугольник.

class TriangleChecker {
  int a;
  int b;
  int c;
  String write = "";

  TriangleChecker({
    required this.a,
    required this.b,
    required this.c,
    required this.write,
  });

  String is_triangle() {
    if (a >= 0 && c >= 0 && b >= 0 && a + b > c && a + c > b && c + b > a) {
      return "Ура, можно построить треугольник!";
    } else if (a < 0 || b < 0 || c < 0) {
      return "С отрицательными числами ничего не выйдет!";
    } else if (a == double && b == double && c == double) {
      return "Нужно вводить только числа!";
    } else {
      return "Жаль, но из этого треугольник не сделать.";
    }
  }
}

// 5) Реализуйте класс MyString, который будет иметь следующие методы:
// метод reverse(), который параметром принимает строку, а возвращает ее в
// перевернутом виде, метод ucFirst(), который параметром принимает строку, а
// возвращает эту же строку, сделав ее первую букву заглавной.

class MyString {
  String change;
  MyString({required this.change});

  reverse() {
    return change.split("").reversed.join();
  }

  ucFirst() {
    String s = change.toString().split("").toList().first.toUpperCase();
    List<String> list = change.toString().split("");
    list.removeAt(0);
    list.insert(0, s);

    return list.join();
  }
}