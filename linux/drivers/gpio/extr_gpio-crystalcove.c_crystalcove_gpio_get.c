
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct crystalcove_gpio {int regmap; } ;


 int CTRL_IN ;
 struct crystalcove_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int,unsigned int*) ;
 int to_reg (unsigned int,int ) ;

__attribute__((used)) static int crystalcove_gpio_get(struct gpio_chip *chip, unsigned gpio)
{
 struct crystalcove_gpio *cg = gpiochip_get_data(chip);
 unsigned int val;
 int ret, reg = to_reg(gpio, CTRL_IN);

 if (reg < 0)
  return 0;

 ret = regmap_read(cg->regmap, reg, &val);
 if (ret)
  return ret;

 return val & 0x1;
}
