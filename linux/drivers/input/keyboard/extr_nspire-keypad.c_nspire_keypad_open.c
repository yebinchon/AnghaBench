
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nspire_keypad {int clk; } ;
struct input_dev {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct nspire_keypad* input_get_drvdata (struct input_dev*) ;
 int nspire_keypad_chip_init (struct nspire_keypad*) ;

__attribute__((used)) static int nspire_keypad_open(struct input_dev *input)
{
 struct nspire_keypad *keypad = input_get_drvdata(input);
 int error;

 error = clk_prepare_enable(keypad->clk);
 if (error)
  return error;

 error = nspire_keypad_chip_init(keypad);
 if (error) {
  clk_disable_unprepare(keypad->clk);
  return error;
 }

 return 0;
}
