
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_gpio {struct wm831x* wm831x; } ;
struct wm831x {scalar_t__ has_gpio_ena; } ;
struct gpio_chip {int dummy; } ;


 unsigned int WM831X_GPIO1_CONTROL ;
 int WM831X_GPN_DIR ;
 int WM831X_GPN_FN_MASK ;
 int WM831X_GPN_TRI ;
 struct wm831x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int wm831x_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int wm831x_set_bits (struct wm831x*,unsigned int,int,int) ;

__attribute__((used)) static int wm831x_gpio_direction_out(struct gpio_chip *chip,
         unsigned offset, int value)
{
 struct wm831x_gpio *wm831x_gpio = gpiochip_get_data(chip);
 struct wm831x *wm831x = wm831x_gpio->wm831x;
 int val = 0;
 int ret;

 if (wm831x->has_gpio_ena)
  val |= WM831X_GPN_TRI;

 ret = wm831x_set_bits(wm831x, WM831X_GPIO1_CONTROL + offset,
         WM831X_GPN_DIR | WM831X_GPN_TRI |
         WM831X_GPN_FN_MASK, val);
 if (ret < 0)
  return ret;


 wm831x_gpio_set(chip, offset, value);

 return 0;
}
