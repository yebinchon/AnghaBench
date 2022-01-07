
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp87565_gpio {int map; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int LP87565_REG_GPIO_IN ;
 struct lp87565_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int lp87565_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 struct lp87565_gpio *gpio = gpiochip_get_data(chip);
 int ret, val;

 ret = regmap_read(gpio->map, LP87565_REG_GPIO_IN, &val);
 if (ret < 0)
  return ret;

 return !!(val & BIT(offset));
}
