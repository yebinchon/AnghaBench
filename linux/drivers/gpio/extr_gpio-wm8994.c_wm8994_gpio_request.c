
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_gpio {struct wm8994* wm8994; } ;
struct wm8994 {int type; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;

 struct wm8994_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int wm8994_gpio_request(struct gpio_chip *chip, unsigned offset)
{
 struct wm8994_gpio *wm8994_gpio = gpiochip_get_data(chip);
 struct wm8994 *wm8994 = wm8994_gpio->wm8994;

 switch (wm8994->type) {
 case 128:
  switch (offset) {
  case 1:
  case 2:
  case 3:
  case 4:
  case 6:
   return -EINVAL;
  }
  break;
 default:
  break;
 }

 return 0;
}
