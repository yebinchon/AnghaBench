
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct tps68470_gpio_data {TYPE_1__ gc; struct regmap* tps68470_regmap; } ;
struct regmap {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 unsigned int TPS68470_N_REGULAR_GPIO ;
 unsigned int TPS68470_REG_GPDO ;
 unsigned int TPS68470_REG_SGPO ;
 int dev_err (int ,char*,unsigned int) ;
 struct tps68470_gpio_data* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (struct regmap*,unsigned int,int*) ;

__attribute__((used)) static int tps68470_gpio_get(struct gpio_chip *gc, unsigned int offset)
{
 struct tps68470_gpio_data *tps68470_gpio = gpiochip_get_data(gc);
 struct regmap *regmap = tps68470_gpio->tps68470_regmap;
 unsigned int reg = TPS68470_REG_GPDO;
 int val, ret;

 if (offset >= TPS68470_N_REGULAR_GPIO) {
  offset -= TPS68470_N_REGULAR_GPIO;
  reg = TPS68470_REG_SGPO;
 }

 ret = regmap_read(regmap, reg, &val);
 if (ret) {
  dev_err(tps68470_gpio->gc.parent, "reg 0x%x read failed\n",
   TPS68470_REG_SGPO);
  return ret;
 }
 return !!(val & BIT(offset));
}
