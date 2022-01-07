
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct da9055_gpio {int da9055; } ;




 int DA9055_PORT_MASK ;
 int DA9055_PORT_SHIFT (unsigned int) ;
 scalar_t__ DA9055_REG_GPIO0_1 ;
 scalar_t__ DA9055_REG_GPIO_MODE0_2 ;
 scalar_t__ DA9055_REG_STATUS_B ;
 int da9055_reg_read (int ,scalar_t__) ;
 struct da9055_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int da9055_gpio_get(struct gpio_chip *gc, unsigned offset)
{
 struct da9055_gpio *gpio = gpiochip_get_data(gc);
 int gpio_direction = 0;
 int ret;


 ret = da9055_reg_read(gpio->da9055, (offset >> 1) + DA9055_REG_GPIO0_1);
 if (ret < 0)
  return ret;

 gpio_direction = ret & (DA9055_PORT_MASK) << DA9055_PORT_SHIFT(offset);
 gpio_direction >>= DA9055_PORT_SHIFT(offset);
 switch (gpio_direction) {
 case 129:
  ret = da9055_reg_read(gpio->da9055, DA9055_REG_STATUS_B);
  if (ret < 0)
   return ret;
  break;
 case 128:
  ret = da9055_reg_read(gpio->da9055, DA9055_REG_GPIO_MODE0_2);
  if (ret < 0)
   return ret;
 }

 return ret & (1 << offset);

}
