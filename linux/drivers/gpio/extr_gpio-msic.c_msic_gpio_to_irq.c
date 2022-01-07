
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msic_gpio {int irq_base; } ;
struct gpio_chip {int dummy; } ;


 struct msic_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int msic_gpio_to_irq(struct gpio_chip *chip, unsigned offset)
{
 struct msic_gpio *mg = gpiochip_get_data(chip);
 return mg->irq_base + offset;
}
