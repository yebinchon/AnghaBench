
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_gpio {struct palmas* palmas; } ;
struct palmas {int dummy; } ;
struct gpio_chip {int dummy; } ;


 unsigned int PALMAS_GPIO_0_IRQ ;
 struct palmas_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int palmas_irq_get_virq (struct palmas*,unsigned int) ;

__attribute__((used)) static int palmas_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
{
 struct palmas_gpio *pg = gpiochip_get_data(gc);
 struct palmas *palmas = pg->palmas;

 return palmas_irq_get_virq(palmas, PALMAS_GPIO_0_IRQ + offset);
}
