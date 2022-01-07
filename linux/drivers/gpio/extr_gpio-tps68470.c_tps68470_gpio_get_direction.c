
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct tps68470_gpio_data {TYPE_1__ gc; struct regmap* tps68470_regmap; } ;
struct regmap {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int TPS68470_GPIO_CTL_REG_A (unsigned int) ;
 int TPS68470_GPIO_MODE_MASK ;
 int TPS68470_GPIO_MODE_OUT_CMOS ;
 unsigned int TPS68470_N_REGULAR_GPIO ;
 int dev_err (int ,char*,int ) ;
 struct tps68470_gpio_data* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (struct regmap*,int ,int*) ;

__attribute__((used)) static int tps68470_gpio_get_direction(struct gpio_chip *gc,
           unsigned int offset)
{
 struct tps68470_gpio_data *tps68470_gpio = gpiochip_get_data(gc);
 struct regmap *regmap = tps68470_gpio->tps68470_regmap;
 int val, ret;


 if (offset >= TPS68470_N_REGULAR_GPIO)
  return 0;

 ret = regmap_read(regmap, TPS68470_GPIO_CTL_REG_A(offset), &val);
 if (ret) {
  dev_err(tps68470_gpio->gc.parent, "reg 0x%x read failed\n",
   TPS68470_GPIO_CTL_REG_A(offset));
  return ret;
 }

 val &= TPS68470_GPIO_MODE_MASK;
 return val >= TPS68470_GPIO_MODE_OUT_CMOS ? 0 : 1;
}
