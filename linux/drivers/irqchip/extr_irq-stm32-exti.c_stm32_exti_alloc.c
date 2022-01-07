
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fwspec {int * param; } ;
struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int irq_map_generic_chip (struct irq_domain*,unsigned int,int ) ;

__attribute__((used)) static int stm32_exti_alloc(struct irq_domain *d, unsigned int virq,
       unsigned int nr_irqs, void *data)
{
 struct irq_fwspec *fwspec = data;
 irq_hw_number_t hwirq;

 hwirq = fwspec->param[0];

 irq_map_generic_chip(d, virq, hwirq);

 return 0;
}
