
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;


 int ENOTSUPP ;
 unsigned long PIN_CONFIG_INPUT_DEBOUNCE ;
 int pinconf_to_config_argument (unsigned long) ;
 unsigned long pinconf_to_config_param (unsigned long) ;
 int sprd_pmic_eic_set_debounce (struct gpio_chip*,unsigned int,int ) ;

__attribute__((used)) static int sprd_pmic_eic_set_config(struct gpio_chip *chip, unsigned int offset,
        unsigned long config)
{
 unsigned long param = pinconf_to_config_param(config);
 u32 arg = pinconf_to_config_argument(config);

 if (param == PIN_CONFIG_INPUT_DEBOUNCE)
  return sprd_pmic_eic_set_debounce(chip, offset, arg);

 return -ENOTSUPP;
}
