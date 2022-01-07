
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct ft010_irq_data* host_data; } ;
struct ft010_irq_data {int dummy; } ;
typedef int irq_hw_number_t ;


 int ft010_irq_chip ;
 int handle_bad_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct ft010_irq_data*) ;
 int irq_set_probe (unsigned int) ;

__attribute__((used)) static int ft010_irqdomain_map(struct irq_domain *d, unsigned int irq,
    irq_hw_number_t hwirq)
{
 struct ft010_irq_data *f = d->host_data;

 irq_set_chip_data(irq, f);

 irq_set_chip_and_handler(irq, &ft010_irq_chip, handle_bad_irq);
 irq_set_probe(irq);

 return 0;
}
