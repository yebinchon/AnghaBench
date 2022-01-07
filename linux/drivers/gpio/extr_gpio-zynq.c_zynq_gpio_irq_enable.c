
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int zynq_gpio_irq_ack (struct irq_data*) ;
 int zynq_gpio_irq_unmask (struct irq_data*) ;

__attribute__((used)) static void zynq_gpio_irq_enable(struct irq_data *irq_data)
{
 zynq_gpio_irq_ack(irq_data);
 zynq_gpio_irq_unmask(irq_data);
}
