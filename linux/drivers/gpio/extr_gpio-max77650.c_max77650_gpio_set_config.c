
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77650_gpio_chip {int map; } ;
struct gpio_chip {int dummy; } ;


 int ENOTSUPP ;
 int MAX77650_GPIO_DEBOUNCE ;
 int MAX77650_GPIO_DEBOUNCE_MASK ;
 int MAX77650_GPIO_DRV_MASK ;
 int MAX77650_GPIO_DRV_OPEN_DRAIN ;
 int MAX77650_GPIO_DRV_PUSH_PULL ;
 int MAX77650_REG_CNFG_GPIO ;



 struct max77650_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int pinconf_to_config_param (unsigned long) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int max77650_gpio_set_config(struct gpio_chip *gc,
        unsigned int offset, unsigned long cfg)
{
 struct max77650_gpio_chip *chip = gpiochip_get_data(gc);

 switch (pinconf_to_config_param(cfg)) {
 case 130:
  return regmap_update_bits(chip->map,
       MAX77650_REG_CNFG_GPIO,
       MAX77650_GPIO_DRV_MASK,
       MAX77650_GPIO_DRV_OPEN_DRAIN);
 case 129:
  return regmap_update_bits(chip->map,
       MAX77650_REG_CNFG_GPIO,
       MAX77650_GPIO_DRV_MASK,
       MAX77650_GPIO_DRV_PUSH_PULL);
 case 128:
  return regmap_update_bits(chip->map,
       MAX77650_REG_CNFG_GPIO,
       MAX77650_GPIO_DEBOUNCE_MASK,
       MAX77650_GPIO_DEBOUNCE);
 default:
  return -ENOTSUPP;
 }
}
