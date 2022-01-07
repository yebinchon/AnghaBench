
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int cpu_online_mask ;
 unsigned int cpumask_any_and (int ,int ) ;
 int cpumask_of (unsigned int) ;
 int irq_data_get_affinity_mask (struct irq_data*) ;
 unsigned int nr_cpu_ids ;
 int plic_irq_toggle (int ,int ,int) ;

__attribute__((used)) static void plic_irq_unmask(struct irq_data *d)
{
 unsigned int cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
        cpu_online_mask);
 if (WARN_ON_ONCE(cpu >= nr_cpu_ids))
  return;
 plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
}
