
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77620_gpio {int dev; int rmap; } ;
struct gpio_chip {int dummy; } ;


 int GPIO_REG_ADDR (unsigned int) ;
 unsigned int MAX77620_CNFG_GPIO_DIR_MASK ;
 unsigned int MAX77620_CNFG_GPIO_INPUT_VAL_MASK ;
 unsigned int MAX77620_CNFG_GPIO_OUTPUT_VAL_MASK ;
 int dev_err (int ,char*,int) ;
 struct max77620_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max77620_gpio_get(struct gpio_chip *gc, unsigned int offset)
{
 struct max77620_gpio *mgpio = gpiochip_get_data(gc);
 unsigned int val;
 int ret;

 ret = regmap_read(mgpio->rmap, GPIO_REG_ADDR(offset), &val);
 if (ret < 0) {
  dev_err(mgpio->dev, "CNFG_GPIOx read failed: %d\n", ret);
  return ret;
 }

 if (val & MAX77620_CNFG_GPIO_DIR_MASK)
  return !!(val & MAX77620_CNFG_GPIO_INPUT_VAL_MASK);
 else
  return !!(val & MAX77620_CNFG_GPIO_OUTPUT_VAL_MASK);
}
