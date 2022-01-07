
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65218_gpio {struct tps65218* tps65218; } ;
struct tps65218 {int dummy; } ;
struct gpio_chip {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;
 int PIN_CONFIG_DRIVE_OPEN_DRAIN ;
 int PIN_CONFIG_DRIVE_PUSH_PULL ;
 int TPS65218_CONFIG1_GPO2_BUF ;
 int TPS65218_PROTECT_L1 ;
 int TPS65218_REG_CONFIG1 ;
 struct tps65218_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinconf_to_config_param (unsigned long) ;
 int tps65218_clear_bits (struct tps65218*,int ,int ,int ) ;
 int tps65218_set_bits (struct tps65218*,int ,int ,int ,int ) ;

__attribute__((used)) static int tps65218_gpio_set_config(struct gpio_chip *gc, unsigned offset,
        unsigned long config)
{
 struct tps65218_gpio *tps65218_gpio = gpiochip_get_data(gc);
 struct tps65218 *tps65218 = tps65218_gpio->tps65218;
 enum pin_config_param param = pinconf_to_config_param(config);

 switch (offset) {
 case 0:
 case 2:

  if (param == PIN_CONFIG_DRIVE_OPEN_DRAIN)
   return 0;
  return -ENOTSUPP;
 case 1:

  if (param == PIN_CONFIG_DRIVE_OPEN_DRAIN)
   return tps65218_clear_bits(tps65218,
         TPS65218_REG_CONFIG1,
         TPS65218_CONFIG1_GPO2_BUF,
         TPS65218_PROTECT_L1);
  if (param == PIN_CONFIG_DRIVE_PUSH_PULL)
   return tps65218_set_bits(tps65218,
       TPS65218_REG_CONFIG1,
       TPS65218_CONFIG1_GPO2_BUF,
       TPS65218_CONFIG1_GPO2_BUF,
       TPS65218_PROTECT_L1);
  return -ENOTSUPP;
 default:
  break;
 }
 return -ENOTSUPP;
}
