
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct da9055_gpio {int da9055; } ;


 unsigned char DA9055_PORT_MASK ;
 unsigned char DA9055_PORT_SHIFT (unsigned int) ;
 unsigned char DA9055_PUSH_PULL ;
 scalar_t__ DA9055_REG_GPIO0_1 ;
 unsigned char DA9055_VDD_IO ;
 int da9055_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int da9055_reg_update (int ,scalar_t__,unsigned char,unsigned char) ;
 struct da9055_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int da9055_gpio_direction_output(struct gpio_chip *gc,
     unsigned offset, int value)
{
 struct da9055_gpio *gpio = gpiochip_get_data(gc);
 unsigned char reg_byte;
 int ret;

 reg_byte = (DA9055_VDD_IO | DA9055_PUSH_PULL)
     << DA9055_PORT_SHIFT(offset);

 ret = da9055_reg_update(gpio->da9055, (offset >> 1) +
    DA9055_REG_GPIO0_1,
    DA9055_PORT_MASK <<
    DA9055_PORT_SHIFT(offset),
    reg_byte);
 if (ret < 0)
  return ret;

 da9055_gpio_set(gc, offset, value);

 return 0;
}
