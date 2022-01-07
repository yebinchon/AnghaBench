
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int dev; int regmap; } ;
struct bd70528_gpio {TYPE_1__ chip; } ;


 int BD70528_GPIO_OUT_EN_MASK ;
 int GPIO_OUT_REG (unsigned int) ;
 int dev_err (int ,char*) ;
 struct bd70528_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int bd70528_get_direction(struct gpio_chip *chip, unsigned int offset)
{
 struct bd70528_gpio *bdgpio = gpiochip_get_data(chip);
 int val, ret;


 ret = regmap_read(bdgpio->chip.regmap, GPIO_OUT_REG(offset), &val);
 if (ret) {
  dev_err(bdgpio->chip.dev, "Could not read gpio direction\n");
  return ret;
 }

 return !(val & BD70528_GPIO_OUT_EN_MASK);
}
