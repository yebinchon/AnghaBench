
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_polled_dev {TYPE_2__* input; } ;
struct gpio_keys_button_data {int last_state; scalar_t__ count; int gpiod; } ;
struct gpio_keys_button {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int dev_err (int ,char*,int) ;
 int gpio_keys_button_event (struct input_polled_dev*,struct gpio_keys_button const*,int) ;
 int gpiod_get_value_cansleep (int ) ;

__attribute__((used)) static void gpio_keys_polled_check_state(struct input_polled_dev *dev,
      const struct gpio_keys_button *button,
      struct gpio_keys_button_data *bdata)
{
 int state;

 state = gpiod_get_value_cansleep(bdata->gpiod);
 if (state < 0) {
  dev_err(dev->input->dev.parent,
   "failed to get gpio state: %d\n", state);
 } else {
  gpio_keys_button_event(dev, button, state);

  if (state != bdata->last_state) {
   bdata->count = 0;
   bdata->last_state = state;
  }
 }
}
