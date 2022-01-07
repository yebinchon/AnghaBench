
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_gpio_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int __set_gpio_level_p012 (struct lpc32xx_gpio_chip*,unsigned int,int) ;
 struct lpc32xx_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void lpc32xx_gpio_set_value_p012(struct gpio_chip *chip, unsigned pin,
 int value)
{
 struct lpc32xx_gpio_chip *group = gpiochip_get_data(chip);

 __set_gpio_level_p012(group, pin, value);
}
