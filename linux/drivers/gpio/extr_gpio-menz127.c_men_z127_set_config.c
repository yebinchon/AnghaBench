
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;



 int men_z127_debounce (struct gpio_chip*,unsigned int,int ) ;
 int men_z127_set_single_ended (struct gpio_chip*,unsigned int,int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;

__attribute__((used)) static int men_z127_set_config(struct gpio_chip *gc, unsigned offset,
          unsigned long config)
{
 enum pin_config_param param = pinconf_to_config_param(config);

 switch (param) {
 case 130:
 case 129:
  return men_z127_set_single_ended(gc, offset, param);

 case 128:
  return men_z127_debounce(gc, offset,
   pinconf_to_config_argument(config));

 default:
  break;
 }

 return -ENOTSUPP;
}
