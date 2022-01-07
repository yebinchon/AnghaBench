
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int EP93XX_GPIO_F_IRQ_BASE ;

__attribute__((used)) static int ep93xx_gpio_f_to_irq(struct gpio_chip *gc, unsigned offset)
{
 return EP93XX_GPIO_F_IRQ_BASE + offset;
}
