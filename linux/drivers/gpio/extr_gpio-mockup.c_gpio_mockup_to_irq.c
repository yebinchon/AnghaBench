
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_mockup_chip {int irqsim; } ;
struct gpio_chip {int dummy; } ;


 struct gpio_mockup_chip* gpiochip_get_data (struct gpio_chip*) ;
 int irq_sim_irqnum (int *,unsigned int) ;

__attribute__((used)) static int gpio_mockup_to_irq(struct gpio_chip *gc, unsigned int offset)
{
 struct gpio_mockup_chip *chip = gpiochip_get_data(gc);

 return irq_sim_irqnum(&chip->irqsim, offset);
}
