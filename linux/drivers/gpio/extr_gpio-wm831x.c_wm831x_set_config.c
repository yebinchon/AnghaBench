
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_gpio {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int ENOTSUPP ;



 unsigned int WM831X_GPIO1_CONTROL ;
 int WM831X_GPN_OD ;
 int WM831X_GPN_OD_MASK ;
 struct wm831x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 int wm831x_gpio_set_debounce (struct wm831x*,unsigned int,int ) ;
 int wm831x_set_bits (struct wm831x*,int,int ,int ) ;

__attribute__((used)) static int wm831x_set_config(struct gpio_chip *chip, unsigned int offset,
        unsigned long config)
{
 struct wm831x_gpio *wm831x_gpio = gpiochip_get_data(chip);
 struct wm831x *wm831x = wm831x_gpio->wm831x;
 int reg = WM831X_GPIO1_CONTROL + offset;

 switch (pinconf_to_config_param(config)) {
 case 130:
  return wm831x_set_bits(wm831x, reg,
           WM831X_GPN_OD_MASK, WM831X_GPN_OD);
 case 129:
  return wm831x_set_bits(wm831x, reg,
           WM831X_GPN_OD_MASK, 0);
 case 128:
  return wm831x_gpio_set_debounce(wm831x, offset,
   pinconf_to_config_argument(config));
 default:
  break;
 }

 return -ENOTSUPP;
}
