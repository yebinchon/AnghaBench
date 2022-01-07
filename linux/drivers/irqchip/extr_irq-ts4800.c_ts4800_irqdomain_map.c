
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts4800_irq_data {int irq_chip; } ;
struct irq_domain {struct ts4800_irq_data* host_data; } ;
typedef int irq_hw_number_t ;


 int handle_simple_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct ts4800_irq_data*) ;
 int irq_set_noprobe (unsigned int) ;

__attribute__((used)) static int ts4800_irqdomain_map(struct irq_domain *d, unsigned int irq,
    irq_hw_number_t hwirq)
{
 struct ts4800_irq_data *data = d->host_data;

 irq_set_chip_and_handler(irq, &data->irq_chip, handle_simple_irq);
 irq_set_chip_data(irq, data);
 irq_set_noprobe(irq);

 return 0;
}
