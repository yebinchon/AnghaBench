
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc4306 {int regmap; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int) ;
 int LTC_REG_CONFIG ;
 struct ltc4306* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void ltc4306_gpio_set(struct gpio_chip *chip, unsigned int offset,
        int value)
{
 struct ltc4306 *data = gpiochip_get_data(chip);

 regmap_update_bits(data->regmap, LTC_REG_CONFIG, BIT(5 - offset),
      value ? BIT(5 - offset) : 0);
}
