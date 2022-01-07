
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct bd70528_gpio {TYPE_1__ chip; } ;


 int BD70528_GPIO_OUT_ENABLE ;
 int BD70528_GPIO_OUT_EN_MASK ;
 int GPIO_OUT_REG (unsigned int) ;
 int bd70528_gpio_set (struct gpio_chip*,unsigned int,int) ;
 struct bd70528_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int bd70528_direction_output(struct gpio_chip *chip, unsigned int offset,
        int value)
{
 struct bd70528_gpio *bdgpio = gpiochip_get_data(chip);

 bd70528_gpio_set(chip, offset, value);
 return regmap_update_bits(bdgpio->chip.regmap, GPIO_OUT_REG(offset),
     BD70528_GPIO_OUT_EN_MASK,
     BD70528_GPIO_OUT_ENABLE);
}
