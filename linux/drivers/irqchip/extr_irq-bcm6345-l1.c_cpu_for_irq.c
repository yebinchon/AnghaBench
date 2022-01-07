
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct bcm6345_l1_chip {int cpumask; } ;


 unsigned int cpumask_first_and (int *,int ) ;
 int irq_data_get_affinity_mask (struct irq_data*) ;

__attribute__((used)) static inline unsigned int cpu_for_irq(struct bcm6345_l1_chip *intc,
     struct irq_data *d)
{
 return cpumask_first_and(&intc->cpumask, irq_data_get_affinity_mask(d));
}
