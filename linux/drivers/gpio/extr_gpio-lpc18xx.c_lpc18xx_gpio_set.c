
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc18xx_gpio_chip {unsigned int base; } ;
struct gpio_chip {int dummy; } ;


 struct lpc18xx_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int writeb (int,unsigned int) ;

__attribute__((used)) static void lpc18xx_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct lpc18xx_gpio_chip *gc = gpiochip_get_data(chip);
 writeb(value ? 1 : 0, gc->base + offset);
}
