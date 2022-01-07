
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct da9052_gpio {int da9052; } ;


 int DA9052_ACTIVE_LOW ;
 int DA9052_DEBOUNCING_ON ;
 scalar_t__ DA9052_GPIO_0_1_REG ;
 int DA9052_GPIO_MASK_LOWER_NIBBLE ;
 int DA9052_GPIO_MASK_UPPER_NIBBLE ;
 unsigned char DA9052_GPIO_NIBBLE_SHIFT ;
 int DA9052_INPUT ;
 scalar_t__ da9052_gpio_port_odd (unsigned int) ;
 int da9052_reg_update (int ,scalar_t__,int ,unsigned char) ;
 struct da9052_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int da9052_gpio_direction_input(struct gpio_chip *gc, unsigned offset)
{
 struct da9052_gpio *gpio = gpiochip_get_data(gc);
 unsigned char register_value;
 int ret;


 register_value = DA9052_INPUT | DA9052_ACTIVE_LOW << 2 |
    DA9052_DEBOUNCING_ON << 3;

 if (da9052_gpio_port_odd(offset))
  ret = da9052_reg_update(gpio->da9052, (offset >> 1) +
     DA9052_GPIO_0_1_REG,
     DA9052_GPIO_MASK_UPPER_NIBBLE,
     (register_value <<
     DA9052_GPIO_NIBBLE_SHIFT));
 else
  ret = da9052_reg_update(gpio->da9052, (offset >> 1) +
     DA9052_GPIO_0_1_REG,
     DA9052_GPIO_MASK_LOWER_NIBBLE,
     register_value);

 return ret;
}
