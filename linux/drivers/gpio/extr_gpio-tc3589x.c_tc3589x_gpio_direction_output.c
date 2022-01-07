
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tc3589x_gpio {struct tc3589x* tc3589x; } ;
struct tc3589x {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ TC3589x_GPIODIR0 ;
 struct tc3589x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int tc3589x_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int tc3589x_set_bits (struct tc3589x*,scalar_t__,int ,int ) ;

__attribute__((used)) static int tc3589x_gpio_direction_output(struct gpio_chip *chip,
      unsigned int offset, int val)
{
 struct tc3589x_gpio *tc3589x_gpio = gpiochip_get_data(chip);
 struct tc3589x *tc3589x = tc3589x_gpio->tc3589x;
 u8 reg = TC3589x_GPIODIR0 + offset / 8;
 unsigned int pos = offset % 8;

 tc3589x_gpio_set(chip, offset, val);

 return tc3589x_set_bits(tc3589x, reg, BIT(pos), BIT(pos));
}
