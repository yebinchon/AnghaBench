
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ hwirq; } ;
struct cpumask {int dummy; } ;


 scalar_t__ HW_IRQ_MX_BASE ;
 int MIROUT (scalar_t__) ;
 int cpu_online_mask ;
 int cpumask_any_and (struct cpumask const*,int ) ;
 int cpumask_of (int) ;
 int irq_data_update_effective_affinity (struct irq_data*,int ) ;
 int set_er (unsigned int,int ) ;

__attribute__((used)) static int xtensa_mx_irq_set_affinity(struct irq_data *d,
  const struct cpumask *dest, bool force)
{
 int cpu = cpumask_any_and(dest, cpu_online_mask);
 unsigned mask = 1u << cpu;

 set_er(mask, MIROUT(d->hwirq - HW_IRQ_MX_BASE));
 irq_data_update_effective_affinity(d, cpumask_of(cpu));

 return 0;

}
