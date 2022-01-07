
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct arizona_gpio {struct arizona* arizona; } ;
struct arizona {int regmap; } ;


 unsigned int ARIZONA_GPIO1_CTRL ;
 int ARIZONA_GPN_LVL ;
 struct arizona_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,unsigned int,int,int) ;

__attribute__((used)) static void arizona_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct arizona_gpio *arizona_gpio = gpiochip_get_data(chip);
 struct arizona *arizona = arizona_gpio->arizona;

 if (value)
  value = ARIZONA_GPN_LVL;

 regmap_update_bits(arizona->regmap, ARIZONA_GPIO1_CTRL + offset,
      ARIZONA_GPN_LVL, value);
}
