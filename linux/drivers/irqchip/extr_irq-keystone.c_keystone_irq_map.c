
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keystone_irq_device {int chip; } ;
struct irq_domain {struct keystone_irq_device* host_data; } ;
typedef int irq_hw_number_t ;


 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct keystone_irq_device*) ;
 int irq_set_probe (unsigned int) ;

__attribute__((used)) static int keystone_irq_map(struct irq_domain *h, unsigned int virq,
    irq_hw_number_t hw)
{
 struct keystone_irq_device *kirq = h->host_data;

 irq_set_chip_data(virq, kirq);
 irq_set_chip_and_handler(virq, &kirq->chip, handle_level_irq);
 irq_set_probe(virq);
 return 0;
}
