
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps68470_gpio_data {struct regmap* tps68470_regmap; } ;
struct regmap {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 unsigned int TPS68470_N_REGULAR_GPIO ;
 unsigned int TPS68470_REG_GPDO ;
 unsigned int TPS68470_REG_SGPO ;
 struct tps68470_gpio_data* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (struct regmap*,unsigned int,int ,int ) ;

__attribute__((used)) static void tps68470_gpio_set(struct gpio_chip *gc, unsigned int offset,
    int value)
{
 struct tps68470_gpio_data *tps68470_gpio = gpiochip_get_data(gc);
 struct regmap *regmap = tps68470_gpio->tps68470_regmap;
 unsigned int reg = TPS68470_REG_GPDO;

 if (offset >= TPS68470_N_REGULAR_GPIO) {
  reg = TPS68470_REG_SGPO;
  offset -= TPS68470_N_REGULAR_GPIO;
 }

 regmap_update_bits(regmap, reg, BIT(offset), value ? BIT(offset) : 0);
}
