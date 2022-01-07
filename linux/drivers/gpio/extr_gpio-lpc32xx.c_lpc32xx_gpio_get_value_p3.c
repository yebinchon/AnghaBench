
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_gpio_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int __get_gpio_state_p3 (struct lpc32xx_gpio_chip*,unsigned int) ;
 struct lpc32xx_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int lpc32xx_gpio_get_value_p3(struct gpio_chip *chip, unsigned pin)
{
 struct lpc32xx_gpio_chip *group = gpiochip_get_data(chip);

 return !!__get_gpio_state_p3(group, pin);
}
