
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77650_gpio_chip {int map; } ;
struct gpio_chip {int dummy; } ;


 int MAX77650_GPIO_DIR_MASK ;
 int MAX77650_GPIO_DIR_OUT ;
 int MAX77650_GPIO_OUTVAL_MASK ;
 int MAX77650_GPIO_OUT_HIGH ;
 int MAX77650_GPIO_OUT_LOW ;
 int MAX77650_REG_CNFG_GPIO ;
 struct max77650_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int max77650_gpio_direction_output(struct gpio_chip *gc,
       unsigned int offset, int value)
{
 struct max77650_gpio_chip *chip = gpiochip_get_data(gc);
 int mask, regval;

 mask = MAX77650_GPIO_DIR_MASK | MAX77650_GPIO_OUTVAL_MASK;
 regval = value ? MAX77650_GPIO_OUT_HIGH : MAX77650_GPIO_OUT_LOW;
 regval |= MAX77650_GPIO_DIR_OUT;

 return regmap_update_bits(chip->map,
      MAX77650_REG_CNFG_GPIO, mask, regval);
}
