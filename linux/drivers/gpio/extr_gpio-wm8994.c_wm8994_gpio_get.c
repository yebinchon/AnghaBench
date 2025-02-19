
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_gpio {struct wm8994* wm8994; } ;
struct wm8994 {int dummy; } ;
struct gpio_chip {int dummy; } ;


 unsigned int WM8994_GPIO_1 ;
 int WM8994_GPN_LVL ;
 struct wm8994_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int wm8994_reg_read (struct wm8994*,unsigned int) ;

__attribute__((used)) static int wm8994_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct wm8994_gpio *wm8994_gpio = gpiochip_get_data(chip);
 struct wm8994 *wm8994 = wm8994_gpio->wm8994;
 int ret;

 ret = wm8994_reg_read(wm8994, WM8994_GPIO_1 + offset);
 if (ret < 0)
  return ret;

 if (ret & WM8994_GPN_LVL)
  return 1;
 else
  return 0;
}
