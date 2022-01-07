
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_gpio {int regmap; } ;
struct gpio_chip {int dummy; } ;


 int CTLO_OUTPUT_SET ;
 int CTRL_OUT ;
 struct wcove_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_write (int ,int,int) ;
 int to_reg (unsigned int,int ) ;

__attribute__((used)) static int wcove_gpio_dir_out(struct gpio_chip *chip, unsigned int gpio,
        int value)
{
 struct wcove_gpio *wg = gpiochip_get_data(chip);
 int reg = to_reg(gpio, CTRL_OUT);

 if (reg < 0)
  return 0;

 return regmap_write(wg->regmap, reg, CTLO_OUTPUT_SET | value);
}
