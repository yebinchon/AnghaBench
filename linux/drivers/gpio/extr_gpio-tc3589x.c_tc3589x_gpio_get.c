
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tc3589x_gpio {struct tc3589x* tc3589x; } ;
struct tc3589x {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int TC3589x_GPIODATA0 ;
 struct tc3589x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int tc3589x_reg_read (struct tc3589x*,int) ;

__attribute__((used)) static int tc3589x_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 struct tc3589x_gpio *tc3589x_gpio = gpiochip_get_data(chip);
 struct tc3589x *tc3589x = tc3589x_gpio->tc3589x;
 u8 reg = TC3589x_GPIODATA0 + (offset / 8) * 2;
 u8 mask = BIT(offset % 8);
 int ret;

 ret = tc3589x_reg_read(tc3589x, reg);
 if (ret < 0)
  return ret;

 return !!(ret & mask);
}
