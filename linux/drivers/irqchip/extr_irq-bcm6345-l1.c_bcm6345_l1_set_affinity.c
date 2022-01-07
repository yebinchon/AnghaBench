
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct irq_data {size_t hwirq; } ;
struct cpumask {int dummy; } ;
struct bcm6345_l1_chip {int lock; TYPE_1__** cpus; int cpumask; } ;
struct TYPE_2__ {size_t* enable_cache; } ;


 size_t BIT (size_t) ;
 int EINVAL ;
 size_t IRQS_PER_WORD ;
 int IRQ_SET_MASK_OK_NOCOPY ;
 int __bcm6345_l1_mask (struct irq_data*) ;
 int __bcm6345_l1_unmask (struct irq_data*) ;
 unsigned int cpu_for_irq (struct bcm6345_l1_chip*,struct irq_data*) ;
 int cpu_online_mask ;
 int cpumask_and (struct cpumask*,int *,struct cpumask const*) ;
 unsigned int cpumask_any_and (struct cpumask*,int ) ;
 int cpumask_copy (int ,struct cpumask const*) ;
 struct cpumask* cpumask_of (unsigned int) ;
 int irq_data_get_affinity_mask (struct irq_data*) ;
 struct bcm6345_l1_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_data_update_effective_affinity (struct irq_data*,struct cpumask*) ;
 unsigned int nr_cpu_ids ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bcm6345_l1_set_affinity(struct irq_data *d,
       const struct cpumask *dest,
       bool force)
{
 struct bcm6345_l1_chip *intc = irq_data_get_irq_chip_data(d);
 u32 word = d->hwirq / IRQS_PER_WORD;
 u32 mask = BIT(d->hwirq % IRQS_PER_WORD);
 unsigned int old_cpu = cpu_for_irq(intc, d);
 unsigned int new_cpu;
 struct cpumask valid;
 unsigned long flags;
 bool enabled;

 if (!cpumask_and(&valid, &intc->cpumask, dest))
  return -EINVAL;

 new_cpu = cpumask_any_and(&valid, cpu_online_mask);
 if (new_cpu >= nr_cpu_ids)
  return -EINVAL;

 dest = cpumask_of(new_cpu);

 raw_spin_lock_irqsave(&intc->lock, flags);
 if (old_cpu != new_cpu) {
  enabled = intc->cpus[old_cpu]->enable_cache[word] & mask;
  if (enabled)
   __bcm6345_l1_mask(d);
  cpumask_copy(irq_data_get_affinity_mask(d), dest);
  if (enabled)
   __bcm6345_l1_unmask(d);
 } else {
  cpumask_copy(irq_data_get_affinity_mask(d), dest);
 }
 raw_spin_unlock_irqrestore(&intc->lock, flags);

 irq_data_update_effective_affinity(d, cpumask_of(new_cpu));

 return IRQ_SET_MASK_OK_NOCOPY;
}
