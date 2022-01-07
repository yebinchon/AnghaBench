
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp873x_gpio {TYPE_1__* lp873; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int regmap; } ;


 int BIT (unsigned int) ;
 unsigned int BITS_PER_GPO ;
 int ENOTSUPP ;
 unsigned int LP873X_GPO_CTRL_OD ;
 int LP873X_REG_GPO_CTRL ;


 struct lp873x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinconf_to_config_param (unsigned long) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int lp873x_gpio_set_config(struct gpio_chip *gc, unsigned offset,
      unsigned long config)
{
 struct lp873x_gpio *gpio = gpiochip_get_data(gc);

 switch (pinconf_to_config_param(config)) {
 case 129:
  return regmap_update_bits(gpio->lp873->regmap,
       LP873X_REG_GPO_CTRL,
       BIT(offset * BITS_PER_GPO +
       LP873X_GPO_CTRL_OD),
       BIT(offset * BITS_PER_GPO +
       LP873X_GPO_CTRL_OD));

 case 128:
  return regmap_update_bits(gpio->lp873->regmap,
       LP873X_REG_GPO_CTRL,
       BIT(offset * BITS_PER_GPO +
       LP873X_GPO_CTRL_OD), 0);
 default:
  return -ENOTSUPP;
 }
}
