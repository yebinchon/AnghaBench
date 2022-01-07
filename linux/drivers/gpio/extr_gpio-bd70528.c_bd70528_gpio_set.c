
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int dev; int regmap; } ;
struct bd70528_gpio {TYPE_1__ chip; } ;


 int BD70528_GPIO_OUT_HI ;
 int BD70528_GPIO_OUT_LO ;
 int BD70528_GPIO_OUT_MASK ;
 int GPIO_OUT_REG (unsigned int) ;
 int dev_err (int ,char*,int) ;
 struct bd70528_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void bd70528_gpio_set(struct gpio_chip *chip, unsigned int offset,
        int value)
{
 int ret;
 struct bd70528_gpio *bdgpio = gpiochip_get_data(chip);
 u8 val = (value) ? BD70528_GPIO_OUT_HI : BD70528_GPIO_OUT_LO;

 ret = regmap_update_bits(bdgpio->chip.regmap, GPIO_OUT_REG(offset),
     BD70528_GPIO_OUT_MASK, val);
 if (ret)
  dev_err(bdgpio->chip.dev, "Could not set gpio to %d\n", value);
}
