
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps65086_gpio {TYPE_1__* tps; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int regmap; } ;


 int BIT (unsigned int) ;
 int TPS65086_GPOCTRL ;
 struct tps65086_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int tps65086_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct tps65086_gpio *gpio = gpiochip_get_data(chip);
 int ret, val;

 ret = regmap_read(gpio->tps->regmap, TPS65086_GPOCTRL, &val);
 if (ret < 0)
  return ret;

 return val & BIT(4 + offset);
}
