
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct da9055_gpio {int da9055; } ;


 int DA9055_REG_GPIO_MODE0_2 ;
 int da9055_reg_update (int ,int ,int,int) ;
 struct da9055_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void da9055_gpio_set(struct gpio_chip *gc, unsigned offset, int value)
{
 struct da9055_gpio *gpio = gpiochip_get_data(gc);

 da9055_reg_update(gpio->da9055,
   DA9055_REG_GPIO_MODE0_2,
   1 << offset,
   value << offset);
}
