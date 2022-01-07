
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int parent; } ;
struct arizona_gpio {struct arizona* arizona; } ;
struct arizona {int regmap; } ;


 unsigned int ARIZONA_GPIO1_CTRL ;
 unsigned int ARIZONA_GPN_DIR ;
 unsigned int ARIZONA_GPN_LVL ;
 int dev_err (int ,char*,int) ;
 struct arizona_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regcache_drop_region (int ,unsigned int,unsigned int) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int arizona_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct arizona_gpio *arizona_gpio = gpiochip_get_data(chip);
 struct arizona *arizona = arizona_gpio->arizona;
 unsigned int reg, val;
 int ret;

 reg = ARIZONA_GPIO1_CTRL + offset;
 ret = regmap_read(arizona->regmap, reg, &val);
 if (ret < 0)
  return ret;


 if (val & ARIZONA_GPN_DIR) {
  ret = pm_runtime_get_sync(chip->parent);
  if (ret < 0) {
   dev_err(chip->parent, "Failed to resume: %d\n", ret);
   return ret;
  }


  ret = regcache_drop_region(arizona->regmap, reg, reg);
  if (ret < 0) {
   dev_err(chip->parent, "Failed to drop cache: %d\n",
    ret);
   return ret;
  }

  ret = regmap_read(arizona->regmap, reg, &val);
  if (ret < 0)
   return ret;

  pm_runtime_mark_last_busy(chip->parent);
  pm_runtime_put_autosuspend(chip->parent);
 }

 if (val & ARIZONA_GPN_LVL)
  return 1;
 else
  return 0;
}
