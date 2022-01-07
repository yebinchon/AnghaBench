
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp87565_gpio {int map; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int LP87565_REG_GPIO_CONFIG ;
 struct lp87565_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int lp87565_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int lp87565_gpio_direction_output(struct gpio_chip *chip,
      unsigned int offset, int value)
{
 struct lp87565_gpio *gpio = gpiochip_get_data(chip);

 lp87565_gpio_set(chip, offset, value);

 return regmap_update_bits(gpio->map,
      LP87565_REG_GPIO_CONFIG,
      BIT(offset), BIT(offset));
}
