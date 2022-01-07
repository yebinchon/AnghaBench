
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_gpio {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int WM831X_GPIO_LEVEL ;
 struct wm831x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int wm831x_set_bits (struct wm831x*,int ,int,int) ;

__attribute__((used)) static void wm831x_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct wm831x_gpio *wm831x_gpio = gpiochip_get_data(chip);
 struct wm831x *wm831x = wm831x_gpio->wm831x;

 wm831x_set_bits(wm831x, WM831X_GPIO_LEVEL, 1 << offset,
   value << offset);
}
