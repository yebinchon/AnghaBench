
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct irq_data {size_t hwirq; } ;
struct cpumask {int dummy; } ;
struct bcm7038_l1_chip {size_t* affinity; int lock; TYPE_1__** cpus; } ;
typedef size_t irq_hw_number_t ;
struct TYPE_2__ {size_t* mask_cache; } ;


 size_t BIT (size_t) ;
 size_t IRQS_PER_WORD ;
 int __bcm7038_l1_mask (struct irq_data*,size_t) ;
 int __bcm7038_l1_unmask (struct irq_data*,unsigned int) ;
 int cpu_online_mask ;
 unsigned int cpumask_any_and (struct cpumask const*,int ) ;
 int cpumask_of (unsigned int) ;
 struct bcm7038_l1_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_data_update_effective_affinity (struct irq_data*,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bcm7038_l1_set_affinity(struct irq_data *d,
       const struct cpumask *dest,
       bool force)
{
 struct bcm7038_l1_chip *intc = irq_data_get_irq_chip_data(d);
 unsigned long flags;
 irq_hw_number_t hw = d->hwirq;
 u32 word = hw / IRQS_PER_WORD;
 u32 mask = BIT(hw % IRQS_PER_WORD);
 unsigned int first_cpu = cpumask_any_and(dest, cpu_online_mask);
 bool was_disabled;

 raw_spin_lock_irqsave(&intc->lock, flags);

 was_disabled = !!(intc->cpus[intc->affinity[hw]]->mask_cache[word] &
     mask);
 __bcm7038_l1_mask(d, intc->affinity[hw]);
 intc->affinity[hw] = first_cpu;
 if (!was_disabled)
  __bcm7038_l1_unmask(d, first_cpu);

 raw_spin_unlock_irqrestore(&intc->lock, flags);
 irq_data_update_effective_affinity(d, cpumask_of(first_cpu));

 return 0;
}
