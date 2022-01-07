
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77650_gpio_chip {int irq; } ;
struct gpio_chip {int dummy; } ;


 struct max77650_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int max77650_gpio_to_irq(struct gpio_chip *gc, unsigned int offset)
{
 struct max77650_gpio_chip *chip = gpiochip_get_data(gc);

 return chip->irq;
}
