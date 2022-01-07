
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct crystalcove_gpio {int regmap; } ;


 int CTLO_OUTPUT_SET ;
 int CTRL_OUT ;
 struct crystalcove_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_write (int ,int,int) ;
 int to_reg (unsigned int,int ) ;

__attribute__((used)) static int crystalcove_gpio_dir_out(struct gpio_chip *chip, unsigned gpio,
        int value)
{
 struct crystalcove_gpio *cg = gpiochip_get_data(chip);
 int reg = to_reg(gpio, CTRL_OUT);

 if (reg < 0)
  return 0;

 return regmap_write(cg->regmap, reg, CTLO_OUTPUT_SET | value);
}
