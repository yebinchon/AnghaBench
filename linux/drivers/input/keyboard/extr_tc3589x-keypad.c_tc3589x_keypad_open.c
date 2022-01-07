
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_keypad {int dummy; } ;
struct input_dev {int dev; } ;


 int dev_err (int *,char*) ;
 struct tc_keypad* input_get_drvdata (struct input_dev*) ;
 int tc3589x_keypad_enable (struct tc_keypad*) ;
 int tc3589x_keypad_init_key_hardware (struct tc_keypad*) ;

__attribute__((used)) static int tc3589x_keypad_open(struct input_dev *input)
{
 int error;
 struct tc_keypad *keypad = input_get_drvdata(input);


 error = tc3589x_keypad_enable(keypad);
 if (error < 0) {
  dev_err(&input->dev, "failed to enable keypad module\n");
  return error;
 }

 error = tc3589x_keypad_init_key_hardware(keypad);
 if (error < 0) {
  dev_err(&input->dev, "failed to configure keypad module\n");
  return error;
 }

 return 0;
}
