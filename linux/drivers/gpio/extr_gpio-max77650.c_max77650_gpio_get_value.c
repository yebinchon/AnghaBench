
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77650_gpio_chip {int map; } ;
struct gpio_chip {int dummy; } ;


 int MAX77650_GPIO_INVAL_BITS (unsigned int) ;
 int MAX77650_REG_CNFG_GPIO ;
 struct max77650_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max77650_gpio_get_value(struct gpio_chip *gc,
       unsigned int offset)
{
 struct max77650_gpio_chip *chip = gpiochip_get_data(gc);
 unsigned int val;
 int rv;

 rv = regmap_read(chip->map, MAX77650_REG_CNFG_GPIO, &val);
 if (rv)
  return rv;

 return MAX77650_GPIO_INVAL_BITS(val);
}
