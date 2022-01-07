
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;
 int ENOTSUPP ;
 unsigned int NR_VX855_GPI ;
 unsigned int NR_VX855_GPInO ;
 int PIN_CONFIG_DRIVE_OPEN_DRAIN ;
 int PIN_CONFIG_DRIVE_PUSH_PULL ;
 int pinconf_to_config_param (unsigned long) ;

__attribute__((used)) static int vx855gpio_set_config(struct gpio_chip *gpio, unsigned int nr,
    unsigned long config)
{
 enum pin_config_param param = pinconf_to_config_param(config);


 if (nr < NR_VX855_GPI)
  return -EINVAL;


 if (nr < NR_VX855_GPInO) {
  if (param != PIN_CONFIG_DRIVE_PUSH_PULL)
   return -ENOTSUPP;
  return 0;
 }


 if (param != PIN_CONFIG_DRIVE_OPEN_DRAIN)
  return -ENOTSUPP;

 return 0;
}
