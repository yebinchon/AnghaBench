
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stx104_gpio {int base; } ;
struct gpio_chip {int dummy; } ;


 struct stx104_gpio* gpiochip_get_data (struct gpio_chip*) ;
 unsigned long inb (int ) ;

__attribute__((used)) static int stx104_gpio_get_multiple(struct gpio_chip *chip, unsigned long *mask,
 unsigned long *bits)
{
 struct stx104_gpio *const stx104gpio = gpiochip_get_data(chip);

 *bits = inb(stx104gpio->base);

 return 0;
}
