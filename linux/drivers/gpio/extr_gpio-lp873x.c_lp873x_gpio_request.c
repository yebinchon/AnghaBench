
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp873x_gpio {TYPE_1__* lp873; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int regmap; } ;


 int EINVAL ;
 int LP873X_CONFIG_CLKIN_PIN_SEL ;
 int LP873X_REG_CONFIG ;
 struct lp873x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int lp873x_gpio_request(struct gpio_chip *gc, unsigned int offset)
{
 struct lp873x_gpio *gpio = gpiochip_get_data(gc);
 int ret;

 switch (offset) {
 case 0:

  break;
 case 1:

  ret = regmap_update_bits(gpio->lp873->regmap, LP873X_REG_CONFIG,
      LP873X_CONFIG_CLKIN_PIN_SEL, 0);
  if (ret)
   return ret;

  break;
 default:
  return -EINVAL;
 }

 return 0;
}
