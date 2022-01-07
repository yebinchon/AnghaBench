
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
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void lp873x_gpio_set(struct gpio_chip *chip, unsigned int offset,
       int value)
{
 struct lp873x_gpio *gpio = gpiochip_get_data(chip);

 regmap_update_bits(gpio->lp873->regmap, LP873X_REG_GPO_CTRL,
      BIT(offset * BITS_PER_GPO),
      value ? BIT(offset * BITS_PER_GPO) : 0);
}
