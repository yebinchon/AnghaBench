
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct bd70528_gpio {TYPE_1__ chip; } ;


 int BD70528_GPIO_DRIVE_MASK ;
 int BD70528_GPIO_OPEN_DRAIN ;
 int BD70528_GPIO_PUSH_PULL ;
 int ENOTSUPP ;
 int GPIO_OUT_REG (unsigned int) ;



 int bd70528_set_debounce (struct bd70528_gpio*,unsigned int,int ) ;
 struct bd70528_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int bd70528_gpio_set_config(struct gpio_chip *chip, unsigned int offset,
       unsigned long config)
{
 struct bd70528_gpio *bdgpio = gpiochip_get_data(chip);

 switch (pinconf_to_config_param(config)) {
 case 130:
  return regmap_update_bits(bdgpio->chip.regmap,
       GPIO_OUT_REG(offset),
       BD70528_GPIO_DRIVE_MASK,
       BD70528_GPIO_OPEN_DRAIN);
  break;
 case 129:
  return regmap_update_bits(bdgpio->chip.regmap,
       GPIO_OUT_REG(offset),
       BD70528_GPIO_DRIVE_MASK,
       BD70528_GPIO_PUSH_PULL);
  break;
 case 128:
  return bd70528_set_debounce(bdgpio, offset,
         pinconf_to_config_argument(config));
  break;
 default:
  break;
 }
 return -ENOTSUPP;
}
