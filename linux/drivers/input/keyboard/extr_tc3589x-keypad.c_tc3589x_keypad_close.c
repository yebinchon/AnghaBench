
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_keypad {int dummy; } ;
struct input_dev {int dummy; } ;


 struct tc_keypad* input_get_drvdata (struct input_dev*) ;
 int tc3589x_keypad_disable (struct tc_keypad*) ;

__attribute__((used)) static void tc3589x_keypad_close(struct input_dev *input)
{
 struct tc_keypad *keypad = input_get_drvdata(input);


 tc3589x_keypad_disable(keypad);
}
