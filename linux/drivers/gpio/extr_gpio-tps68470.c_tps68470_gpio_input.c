
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps68470_gpio_data {struct regmap* tps68470_regmap; } ;
struct regmap {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int TPS68470_GPIO_CTL_REG_A (unsigned int) ;
 int TPS68470_GPIO_MODE_MASK ;
 unsigned int TPS68470_N_REGULAR_GPIO ;
 struct tps68470_gpio_data* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int) ;

__attribute__((used)) static int tps68470_gpio_input(struct gpio_chip *gc, unsigned int offset)
{
 struct tps68470_gpio_data *tps68470_gpio = gpiochip_get_data(gc);
 struct regmap *regmap = tps68470_gpio->tps68470_regmap;


 if (offset >= TPS68470_N_REGULAR_GPIO)
  return -EINVAL;

 return regmap_update_bits(regmap, TPS68470_GPIO_CTL_REG_A(offset),
       TPS68470_GPIO_MODE_MASK, 0x00);
}
