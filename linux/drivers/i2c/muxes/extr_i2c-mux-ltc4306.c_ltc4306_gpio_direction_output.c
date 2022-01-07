
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc4306 {int regmap; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int) ;
 int LTC_REG_MODE ;
 struct ltc4306* gpiochip_get_data (struct gpio_chip*) ;
 int ltc4306_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int ltc4306_gpio_direction_output(struct gpio_chip *chip,
      unsigned int offset, int value)
{
 struct ltc4306 *data = gpiochip_get_data(chip);

 ltc4306_gpio_set(chip, offset, value);
 return regmap_update_bits(data->regmap, LTC_REG_MODE,
      BIT(7 - offset), 0);
}
