
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 int EP93XX_GPIO_F_IRQ_BASE ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int generic_handle_irq (int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 unsigned int irq_desc_get_irq (struct irq_desc*) ;

__attribute__((used)) static void ep93xx_gpio_f_irq_handler(struct irq_desc *desc)
{





 struct irq_chip *irqchip = irq_desc_get_chip(desc);
 unsigned int irq = irq_desc_get_irq(desc);
 int port_f_idx = ((irq + 1) & 7) ^ 4;
 int gpio_irq = EP93XX_GPIO_F_IRQ_BASE + port_f_idx;

 chained_irq_enter(irqchip, desc);
 generic_handle_irq(gpio_irq);
 chained_irq_exit(irqchip, desc);
}
