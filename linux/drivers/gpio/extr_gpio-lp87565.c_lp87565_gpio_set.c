
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp87565_gpio {int map; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int LP87565_REG_GPIO_OUT ;
 struct lp87565_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void lp87565_gpio_set(struct gpio_chip *chip, unsigned int offset,
        int value)
{
 struct lp87565_gpio *gpio = gpiochip_get_data(chip);

 regmap_update_bits(gpio->map, LP87565_REG_GPIO_OUT,
      BIT(offset), value ? BIT(offset) : 0);
}
