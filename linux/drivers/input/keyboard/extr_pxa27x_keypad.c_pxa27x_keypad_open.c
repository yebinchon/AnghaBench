
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa27x_keypad {int clk; } ;
struct input_dev {int dummy; } ;


 int clk_prepare_enable (int ) ;
 struct pxa27x_keypad* input_get_drvdata (struct input_dev*) ;
 int pxa27x_keypad_config (struct pxa27x_keypad*) ;

__attribute__((used)) static int pxa27x_keypad_open(struct input_dev *dev)
{
 struct pxa27x_keypad *keypad = input_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(keypad->clk);
 if (ret)
  return ret;

 pxa27x_keypad_config(keypad);

 return 0;
}
