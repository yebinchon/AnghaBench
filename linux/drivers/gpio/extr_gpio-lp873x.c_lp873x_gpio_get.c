
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
 int LP873X_REG_GPO_CTRL ;
 struct lp873x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int lp873x_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 struct lp873x_gpio *gpio = gpiochip_get_data(chip);
 int ret, val;

 ret = regmap_read(gpio->lp873->regmap, LP873X_REG_GPO_CTRL, &val);
 if (ret < 0)
  return ret;

 return val & BIT(offset * BITS_PER_GPO);
}
