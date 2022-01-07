
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_gpio {struct wm8994* wm8994; } ;
struct wm8994 {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int ENOTSUPP ;


 int WM8994_GPIO_1 ;
 int WM8994_GPN_OP_CFG ;
 int WM8994_GPN_OP_CFG_MASK ;
 struct wm8994_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinconf_to_config_param (unsigned long) ;
 int wm8994_set_bits (struct wm8994*,int ,int ,int ) ;

__attribute__((used)) static int wm8994_gpio_set_config(struct gpio_chip *chip, unsigned int offset,
      unsigned long config)
{
 struct wm8994_gpio *wm8994_gpio = gpiochip_get_data(chip);
 struct wm8994 *wm8994 = wm8994_gpio->wm8994;

 switch (pinconf_to_config_param(config)) {
 case 129:
  return wm8994_set_bits(wm8994, WM8994_GPIO_1 + offset,
           WM8994_GPN_OP_CFG_MASK,
           WM8994_GPN_OP_CFG);
 case 128:
  return wm8994_set_bits(wm8994, WM8994_GPIO_1 + offset,
           WM8994_GPN_OP_CFG_MASK, 0);
 default:
  break;
 }

 return -ENOTSUPP;
}
