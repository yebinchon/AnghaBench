
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp87565_gpio {int map; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 int ENOTSUPP ;
 int LP87565_GOIO1_OD ;
 int LP87565_REG_GPIO_CONFIG ;


 int __ffs (int ) ;
 struct lp87565_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinconf_to_config_param (unsigned long) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int lp87565_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
       unsigned long config)
{
 struct lp87565_gpio *gpio = gpiochip_get_data(gc);

 switch (pinconf_to_config_param(config)) {
 case 129:
  return regmap_update_bits(gpio->map,
       LP87565_REG_GPIO_CONFIG,
       BIT(offset +
           __ffs(LP87565_GOIO1_OD)),
       BIT(offset +
           __ffs(LP87565_GOIO1_OD)));
 case 128:
  return regmap_update_bits(gpio->map,
       LP87565_REG_GPIO_CONFIG,
       BIT(offset +
           __ffs(LP87565_GOIO1_OD)), 0);
 default:
  return -ENOTSUPP;
 }
}
