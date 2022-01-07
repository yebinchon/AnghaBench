
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;
typedef int irq_hw_number_t ;


 int BIT (int ) ;
 int GIC_HWIRQ_TO_SHARED (int ) ;
 int GIC_MAP_PIN_MAP_TO_PIN ;
 int cpumask_of (unsigned int) ;
 int gic_cpu_pin ;
 int gic_lock ;
 int irq_data_update_effective_affinity (struct irq_data*,int ) ;
 struct irq_data* irq_get_irq_data (unsigned int) ;
 int mips_cm_vp_id (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_gic_map_pin (int,int) ;
 int write_gic_map_vp (int,int ) ;

__attribute__((used)) static int gic_shared_irq_domain_map(struct irq_domain *d, unsigned int virq,
         irq_hw_number_t hw, unsigned int cpu)
{
 int intr = GIC_HWIRQ_TO_SHARED(hw);
 struct irq_data *data;
 unsigned long flags;

 data = irq_get_irq_data(virq);

 spin_lock_irqsave(&gic_lock, flags);
 write_gic_map_pin(intr, GIC_MAP_PIN_MAP_TO_PIN | gic_cpu_pin);
 write_gic_map_vp(intr, BIT(mips_cm_vp_id(cpu)));
 irq_data_update_effective_affinity(data, cpumask_of(cpu));
 spin_unlock_irqrestore(&gic_lock, flags);

 return 0;
}
