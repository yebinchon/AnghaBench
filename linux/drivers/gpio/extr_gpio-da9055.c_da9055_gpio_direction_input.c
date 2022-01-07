
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct da9055_gpio {int da9055; } ;


 unsigned char DA9055_ACT_LOW ;
 unsigned char DA9055_GPI ;
 unsigned char DA9055_PORT_MASK ;
 unsigned char DA9055_PORT_SHIFT (unsigned int) ;
 scalar_t__ DA9055_REG_GPIO0_1 ;
 int da9055_reg_update (int ,scalar_t__,unsigned char,unsigned char) ;
 struct da9055_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int da9055_gpio_direction_input(struct gpio_chip *gc, unsigned offset)
{
 struct da9055_gpio *gpio = gpiochip_get_data(gc);
 unsigned char reg_byte;

 reg_byte = (DA9055_ACT_LOW | DA9055_GPI)
    << DA9055_PORT_SHIFT(offset);

 return da9055_reg_update(gpio->da9055, (offset >> 1) +
    DA9055_REG_GPIO0_1,
    DA9055_PORT_MASK <<
    DA9055_PORT_SHIFT(offset),
    reg_byte);
}
