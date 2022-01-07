
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int parent; } ;
struct arizona_gpio {struct arizona* arizona; } ;
struct arizona {int regmap; } ;


 unsigned int ARIZONA_GPIO1_CTRL ;
 int ARIZONA_GPN_DIR ;
 struct arizona_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int gpiochip_line_is_persistent (struct gpio_chip*,unsigned int) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regmap_update_bits_check (int ,unsigned int,int ,int ,int*) ;

__attribute__((used)) static int arizona_gpio_direction_in(struct gpio_chip *chip, unsigned offset)
{
 struct arizona_gpio *arizona_gpio = gpiochip_get_data(chip);
 struct arizona *arizona = arizona_gpio->arizona;
 bool persistent = gpiochip_line_is_persistent(chip, offset);
 bool change;
 int ret;

 ret = regmap_update_bits_check(arizona->regmap,
           ARIZONA_GPIO1_CTRL + offset,
           ARIZONA_GPN_DIR, ARIZONA_GPN_DIR,
           &change);
 if (ret < 0)
  return ret;

 if (change && persistent) {
  pm_runtime_mark_last_busy(chip->parent);
  pm_runtime_put_autosuspend(chip->parent);
 }

 return 0;
}
