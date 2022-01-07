
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
typedef int irq_hw_number_t ;


 int bcm7038_l1_irq_chip ;
 int handle_level_irq ;
 int irq_desc_get_irq_data (int ) ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int ) ;
 int irq_to_desc (unsigned int) ;
 int irqd_set_single_target (int ) ;

__attribute__((used)) static int bcm7038_l1_map(struct irq_domain *d, unsigned int virq,
     irq_hw_number_t hw_irq)
{
 irq_set_chip_and_handler(virq, &bcm7038_l1_irq_chip, handle_level_irq);
 irq_set_chip_data(virq, d->host_data);
 irqd_set_single_target(irq_desc_get_irq_data(irq_to_desc(virq)));
 return 0;
}
