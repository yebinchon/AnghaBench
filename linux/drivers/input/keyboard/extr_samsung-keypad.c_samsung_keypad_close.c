
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_keypad {int dummy; } ;
struct input_dev {int dummy; } ;


 struct samsung_keypad* input_get_drvdata (struct input_dev*) ;
 int samsung_keypad_stop (struct samsung_keypad*) ;

__attribute__((used)) static void samsung_keypad_close(struct input_dev *input_dev)
{
 struct samsung_keypad *keypad = input_get_drvdata(input_dev);

 samsung_keypad_stop(keypad);
}
