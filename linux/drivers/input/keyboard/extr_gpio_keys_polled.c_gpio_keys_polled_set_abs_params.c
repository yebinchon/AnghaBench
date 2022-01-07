
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct gpio_keys_platform_data {int nbuttons; struct gpio_keys_button* buttons; } ;
struct gpio_keys_button {scalar_t__ type; unsigned int code; int value; } ;


 scalar_t__ EV_ABS ;
 int input_set_abs_params (struct input_dev*,unsigned int,int,int,int ,int ) ;

__attribute__((used)) static void gpio_keys_polled_set_abs_params(struct input_dev *input,
 const struct gpio_keys_platform_data *pdata, unsigned int code)
{
 int i, min = 0, max = 0;

 for (i = 0; i < pdata->nbuttons; i++) {
  const struct gpio_keys_button *button = &pdata->buttons[i];

  if (button->type != EV_ABS || button->code != code)
   continue;

  if (button->value < min)
   min = button->value;
  if (button->value > max)
   max = button->value;
 }

 input_set_abs_params(input, code, min, max, 0, 0);
}
