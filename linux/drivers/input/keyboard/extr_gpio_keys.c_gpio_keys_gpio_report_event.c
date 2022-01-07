
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct gpio_keys_button {int type; int value; int code; } ;
struct gpio_button_data {int * code; int gpiod; struct input_dev* input; struct gpio_keys_button* button; } ;


 unsigned int EV_ABS ;
 unsigned int EV_KEY ;
 int dev_err (int ,char*,int) ;
 int gpiod_get_value_cansleep (int ) ;
 int input_event (struct input_dev*,unsigned int,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void gpio_keys_gpio_report_event(struct gpio_button_data *bdata)
{
 const struct gpio_keys_button *button = bdata->button;
 struct input_dev *input = bdata->input;
 unsigned int type = button->type ?: EV_KEY;
 int state;

 state = gpiod_get_value_cansleep(bdata->gpiod);
 if (state < 0) {
  dev_err(input->dev.parent,
   "failed to get gpio state: %d\n", state);
  return;
 }

 if (type == EV_ABS) {
  if (state)
   input_event(input, type, button->code, button->value);
 } else {
  input_event(input, type, *bdata->code, state);
 }
 input_sync(input);
}
