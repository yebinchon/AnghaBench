
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77620_gpio {int rmap; } ;
struct gpio_chip {int dummy; } ;


 int ENOTSUPP ;
 int GPIO_REG_ADDR (unsigned int) ;
 int MAX77620_CNFG_GPIO_DRV_MASK ;
 int MAX77620_CNFG_GPIO_DRV_OPENDRAIN ;
 int MAX77620_CNFG_GPIO_DRV_PUSHPULL ;



 struct max77620_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int max77620_gpio_set_debounce (struct max77620_gpio*,unsigned int,int ) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int max77620_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
        unsigned long config)
{
 struct max77620_gpio *mgpio = gpiochip_get_data(gc);

 switch (pinconf_to_config_param(config)) {
 case 130:
  return regmap_update_bits(mgpio->rmap, GPIO_REG_ADDR(offset),
       MAX77620_CNFG_GPIO_DRV_MASK,
       MAX77620_CNFG_GPIO_DRV_OPENDRAIN);
 case 129:
  return regmap_update_bits(mgpio->rmap, GPIO_REG_ADDR(offset),
       MAX77620_CNFG_GPIO_DRV_MASK,
       MAX77620_CNFG_GPIO_DRV_PUSHPULL);
 case 128:
  return max77620_gpio_set_debounce(mgpio, offset,
   pinconf_to_config_argument(config));
 default:
  break;
 }

 return -ENOTSUPP;
}
