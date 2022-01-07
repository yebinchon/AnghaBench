
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition_desc {int chained_desc; } ;
struct irq_data {int hwirq; } ;
struct irq_chip {int (* irq_mask ) (struct irq_data*) ;} ;


 struct partition_desc* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct irq_chip* irq_desc_get_chip (int ) ;
 struct irq_data* irq_desc_get_irq_data (int ) ;
 scalar_t__ partition_check_cpu (struct partition_desc*,int ,int ) ;
 int smp_processor_id () ;
 int stub1 (struct irq_data*) ;

__attribute__((used)) static void partition_irq_mask(struct irq_data *d)
{
 struct partition_desc *part = irq_data_get_irq_chip_data(d);
 struct irq_chip *chip = irq_desc_get_chip(part->chained_desc);
 struct irq_data *data = irq_desc_get_irq_data(part->chained_desc);

 if (partition_check_cpu(part, smp_processor_id(), d->hwirq) &&
     chip->irq_mask)
  chip->irq_mask(data);
}
