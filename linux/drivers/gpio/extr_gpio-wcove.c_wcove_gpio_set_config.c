
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_gpio {int regmap; } ;
struct gpio_chip {int dummy; } ;


 int CTLO_DRV_CMOS ;
 int CTLO_DRV_MASK ;
 int CTLO_DRV_OD ;
 int CTRL_OUT ;
 int ENOTSUPP ;


 struct wcove_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinconf_to_config_param (unsigned long) ;
 int regmap_update_bits (int ,int,int ,int ) ;
 int to_reg (unsigned int,int ) ;

__attribute__((used)) static int wcove_gpio_set_config(struct gpio_chip *chip, unsigned int gpio,
     unsigned long config)
{
 struct wcove_gpio *wg = gpiochip_get_data(chip);
 int reg = to_reg(gpio, CTRL_OUT);

 if (reg < 0)
  return 0;

 switch (pinconf_to_config_param(config)) {
 case 129:
  return regmap_update_bits(wg->regmap, reg, CTLO_DRV_MASK,
       CTLO_DRV_OD);
 case 128:
  return regmap_update_bits(wg->regmap, reg, CTLO_DRV_MASK,
       CTLO_DRV_CMOS);
 default:
  break;
 }

 return -ENOTSUPP;
}
