
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxc_gpio_port {scalar_t__ base; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 scalar_t__ GPIO_IMR ;
 scalar_t__ GPIO_ISR ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct mxc_gpio_port* irq_desc_get_handler_data (struct irq_desc*) ;
 int mxc_gpio_irq_handler (struct mxc_gpio_port*,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void mx3_gpio_irq_handler(struct irq_desc *desc)
{
 u32 irq_stat;
 struct mxc_gpio_port *port = irq_desc_get_handler_data(desc);
 struct irq_chip *chip = irq_desc_get_chip(desc);

 chained_irq_enter(chip, desc);

 irq_stat = readl(port->base + GPIO_ISR) & readl(port->base + GPIO_IMR);

 mxc_gpio_irq_handler(port, irq_stat);

 chained_irq_exit(chip, desc);
}
