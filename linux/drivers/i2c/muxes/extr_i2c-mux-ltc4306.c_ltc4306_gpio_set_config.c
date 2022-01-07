
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc4306 {int regmap; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (int) ;
 int ENOTSUPP ;
 int LTC_REG_MODE ;


 struct ltc4306* gpiochip_get_data (struct gpio_chip*) ;
 int pinconf_to_config_param (unsigned long) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int ltc4306_gpio_set_config(struct gpio_chip *chip,
       unsigned int offset, unsigned long config)
{
 struct ltc4306 *data = gpiochip_get_data(chip);
 unsigned int val;

 switch (pinconf_to_config_param(config)) {
 case 129:
  val = 0;
  break;
 case 128:
  val = BIT(4 - offset);
  break;
 default:
  return -ENOTSUPP;
 }

 return regmap_update_bits(data->regmap, LTC_REG_MODE,
      BIT(4 - offset), val);
}
