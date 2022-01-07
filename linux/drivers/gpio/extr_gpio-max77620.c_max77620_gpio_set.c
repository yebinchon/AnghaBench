
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max77620_gpio {int dev; int rmap; } ;
struct gpio_chip {int dummy; } ;


 int GPIO_REG_ADDR (unsigned int) ;
 int MAX77620_CNFG_GPIO_OUTPUT_VAL_HIGH ;
 int MAX77620_CNFG_GPIO_OUTPUT_VAL_LOW ;
 int MAX77620_CNFG_GPIO_OUTPUT_VAL_MASK ;
 int dev_err (int ,char*,int) ;
 struct max77620_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void max77620_gpio_set(struct gpio_chip *gc, unsigned int offset,
         int value)
{
 struct max77620_gpio *mgpio = gpiochip_get_data(gc);
 u8 val;
 int ret;

 val = (value) ? MAX77620_CNFG_GPIO_OUTPUT_VAL_HIGH :
    MAX77620_CNFG_GPIO_OUTPUT_VAL_LOW;

 ret = regmap_update_bits(mgpio->rmap, GPIO_REG_ADDR(offset),
     MAX77620_CNFG_GPIO_OUTPUT_VAL_MASK, val);
 if (ret < 0)
  dev_err(mgpio->dev, "CNFG_GPIO_OUT update failed: %d\n", ret);
}
