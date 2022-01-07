
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct bd70528_gpio {TYPE_1__ chip; } ;


 int bd70528_get_direction (struct gpio_chip*,unsigned int) ;
 int bd70528_gpio_get_i (struct bd70528_gpio*,unsigned int) ;
 int bd70528_gpio_get_o (struct bd70528_gpio*,unsigned int) ;
 int dev_err (int ,char*) ;
 struct bd70528_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int bd70528_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 int ret;
 struct bd70528_gpio *bdgpio = gpiochip_get_data(chip);
 ret = bd70528_get_direction(chip, offset);
 if (ret == 0)
  ret = bd70528_gpio_get_o(bdgpio, offset);
 else if (ret == 1)
  ret = bd70528_gpio_get_i(bdgpio, offset);
 else
  dev_err(bdgpio->chip.dev, "failed to read GPIO direction\n");

 return ret;
}
