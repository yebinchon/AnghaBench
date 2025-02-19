
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_gpio {int regmap; } ;
struct gpio_chip {int dummy; } ;


 unsigned int CTLO_DIR_OUT ;
 int CTRL_OUT ;
 struct wcove_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int,unsigned int*) ;
 int to_reg (unsigned int,int ) ;

__attribute__((used)) static int wcove_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
{
 struct wcove_gpio *wg = gpiochip_get_data(chip);
 unsigned int val;
 int ret, reg = to_reg(gpio, CTRL_OUT);

 if (reg < 0)
  return 0;

 ret = regmap_read(wg->regmap, reg, &val);
 if (ret)
  return ret;

 return !(val & CTLO_DIR_OUT);
}
