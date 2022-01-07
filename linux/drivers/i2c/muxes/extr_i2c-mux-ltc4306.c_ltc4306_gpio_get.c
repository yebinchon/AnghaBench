
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc4306 {int regmap; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (int) ;
 int LTC_REG_CONFIG ;
 struct ltc4306* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int ltc4306_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 struct ltc4306 *data = gpiochip_get_data(chip);
 unsigned int val;
 int ret;

 ret = regmap_read(data->regmap, LTC_REG_CONFIG, &val);
 if (ret < 0)
  return ret;

 return !!(val & BIT(1 - offset));
}
