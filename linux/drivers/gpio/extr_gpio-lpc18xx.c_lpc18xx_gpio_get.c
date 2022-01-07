
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc18xx_gpio_chip {unsigned int base; } ;
struct gpio_chip {int dummy; } ;


 struct lpc18xx_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int readb (unsigned int) ;

__attribute__((used)) static int lpc18xx_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct lpc18xx_gpio_chip *gc = gpiochip_get_data(chip);
 return !!readb(gc->base + offset);
}
