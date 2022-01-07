
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_gpio_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct pxa_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static inline struct pxa_gpio_chip *chip_to_pxachip(struct gpio_chip *c)
{
 struct pxa_gpio_chip *pxa_chip = gpiochip_get_data(c);

 return pxa_chip;
}
