
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77620_gpio {int dev; int rmap; } ;
struct gpio_chip {int dummy; } ;


 int GPIO_REG_ADDR (unsigned int) ;
 int MAX77620_CNFG_GPIO_DIR_INPUT ;
 int MAX77620_CNFG_GPIO_DIR_MASK ;
 int dev_err (int ,char*,int) ;
 struct max77620_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int max77620_gpio_dir_input(struct gpio_chip *gc, unsigned int offset)
{
 struct max77620_gpio *mgpio = gpiochip_get_data(gc);
 int ret;

 ret = regmap_update_bits(mgpio->rmap, GPIO_REG_ADDR(offset),
     MAX77620_CNFG_GPIO_DIR_MASK,
     MAX77620_CNFG_GPIO_DIR_INPUT);
 if (ret < 0)
  dev_err(mgpio->dev, "CNFG_GPIOx dir update failed: %d\n", ret);

 return ret;
}
