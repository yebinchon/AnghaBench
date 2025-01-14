
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf857x {int irq_enabled; } ;
struct irq_data {int hwirq; } ;


 struct pcf857x* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void pcf857x_irq_disable(struct irq_data *data)
{
 struct pcf857x *gpio = irq_data_get_irq_chip_data(data);

 gpio->irq_enabled &= ~(1 << data->hwirq);
}
