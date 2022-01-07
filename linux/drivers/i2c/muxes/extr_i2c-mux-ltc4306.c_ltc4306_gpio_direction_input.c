
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc4306 {int regmap; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int) ;
 int LTC_REG_MODE ;
 struct ltc4306* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int ltc4306_gpio_direction_input(struct gpio_chip *chip,
     unsigned int offset)
{
 struct ltc4306 *data = gpiochip_get_data(chip);

 return regmap_update_bits(data->regmap, LTC_REG_MODE,
      BIT(7 - offset), BIT(7 - offset));
}
