
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct egpio_info {int irqs_enabled; int irq_start; } ;


 struct egpio_info* irq_data_get_irq_chip_data (struct irq_data*) ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static void egpio_unmask(struct irq_data *data)
{
 struct egpio_info *ei = irq_data_get_irq_chip_data(data);
 ei->irqs_enabled |= 1 << (data->irq - ei->irq_start);
 pr_debug("EGPIO unmask %d %04x\n", data->irq, ei->irqs_enabled);
}
