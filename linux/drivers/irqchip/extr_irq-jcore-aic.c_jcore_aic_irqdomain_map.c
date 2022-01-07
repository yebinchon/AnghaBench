
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct irq_chip* host_data; } ;
struct irq_chip {int dummy; } ;
typedef int irq_hw_number_t ;


 int handle_jcore_irq ;
 int irq_set_chip_and_handler (unsigned int,struct irq_chip*,int ) ;

__attribute__((used)) static int jcore_aic_irqdomain_map(struct irq_domain *d, unsigned int irq,
       irq_hw_number_t hwirq)
{
 struct irq_chip *aic = d->host_data;

 irq_set_chip_and_handler(irq, aic, handle_jcore_irq);

 return 0;
}
