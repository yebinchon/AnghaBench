
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_gpio {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int WM831X_GPIO_LEVEL ;
 struct wm831x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int wm831x_reg_read (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct wm831x_gpio *wm831x_gpio = gpiochip_get_data(chip);
 struct wm831x *wm831x = wm831x_gpio->wm831x;
 int ret;

 ret = wm831x_reg_read(wm831x, WM831X_GPIO_LEVEL);
 if (ret < 0)
  return ret;

 if (ret & 1 << offset)
  return 1;
 else
  return 0;
}
