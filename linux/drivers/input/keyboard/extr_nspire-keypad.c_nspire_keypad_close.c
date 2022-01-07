
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nspire_keypad {int clk; } ;
struct input_dev {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct nspire_keypad* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void nspire_keypad_close(struct input_dev *input)
{
 struct nspire_keypad *keypad = input_get_drvdata(input);

 clk_disable_unprepare(keypad->clk);
}
