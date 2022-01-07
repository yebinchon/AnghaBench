
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {struct input_dev* input; struct gpio_mouse* private; } ;
struct input_dev {int dummy; } ;
struct gpio_mouse {scalar_t__ up; scalar_t__ down; scalar_t__ left; scalar_t__ right; scalar_t__ bright; scalar_t__ bmiddle; scalar_t__ bleft; } ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int REL_X ;
 int REL_Y ;
 int gpiod_get_value (scalar_t__) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void gpio_mouse_scan(struct input_polled_dev *dev)
{
 struct gpio_mouse *gpio = dev->private;
 struct input_dev *input = dev->input;
 int x, y;

 if (gpio->bleft)
  input_report_key(input, BTN_LEFT,
     gpiod_get_value(gpio->bleft));
 if (gpio->bmiddle)
  input_report_key(input, BTN_MIDDLE,
     gpiod_get_value(gpio->bmiddle));
 if (gpio->bright)
  input_report_key(input, BTN_RIGHT,
     gpiod_get_value(gpio->bright));

 x = gpiod_get_value(gpio->right) - gpiod_get_value(gpio->left);
 y = gpiod_get_value(gpio->down) - gpiod_get_value(gpio->up);

 input_report_rel(input, REL_X, x);
 input_report_rel(input, REL_Y, y);
 input_sync(input);
}
