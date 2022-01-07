
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tc3589x_gpio {struct tc3589x* tc3589x; } ;
struct tc3589x {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int ENOTSUPP ;



 scalar_t__ TC3589x_GPIOODE0 ;
 scalar_t__ TC3589x_GPIOODM0 ;
 struct tc3589x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinconf_to_config_param (unsigned long) ;
 int tc3589x_set_bits (struct tc3589x*,scalar_t__,int ,int ) ;

__attribute__((used)) static int tc3589x_gpio_set_config(struct gpio_chip *chip, unsigned int offset,
       unsigned long config)
{
 struct tc3589x_gpio *tc3589x_gpio = gpiochip_get_data(chip);
 struct tc3589x *tc3589x = tc3589x_gpio->tc3589x;





 u8 odmreg = TC3589x_GPIOODM0 + (offset / 8) * 2;
 u8 odereg = TC3589x_GPIOODE0 + (offset / 8) * 2;
 unsigned int pos = offset % 8;
 int ret;

 switch (pinconf_to_config_param(config)) {
 case 130:

  ret = tc3589x_set_bits(tc3589x, odmreg, BIT(pos), 0);
  if (ret)
   return ret;

  return tc3589x_set_bits(tc3589x, odereg, BIT(pos), BIT(pos));
 case 129:

  ret = tc3589x_set_bits(tc3589x, odmreg, BIT(pos), BIT(pos));
  if (ret)
   return ret;

  return tc3589x_set_bits(tc3589x, odereg, BIT(pos), BIT(pos));
 case 128:

  return tc3589x_set_bits(tc3589x, odereg, BIT(pos), 0);
 default:
  break;
 }
 return -ENOTSUPP;
}
