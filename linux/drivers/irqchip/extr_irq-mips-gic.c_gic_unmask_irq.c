
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 unsigned int GIC_HWIRQ_TO_SHARED (int ) ;
 unsigned int cpumask_first (int ) ;
 int gic_clear_pcpu_masks (unsigned int) ;
 int irq_data_get_effective_affinity_mask (struct irq_data*) ;
 int pcpu_masks ;
 int per_cpu_ptr (int ,unsigned int) ;
 int set_bit (unsigned int,int ) ;
 int write_gic_smask (unsigned int) ;

__attribute__((used)) static void gic_unmask_irq(struct irq_data *d)
{
 unsigned int intr = GIC_HWIRQ_TO_SHARED(d->hwirq);
 unsigned int cpu;

 write_gic_smask(intr);

 gic_clear_pcpu_masks(intr);
 cpu = cpumask_first(irq_data_get_effective_affinity_mask(d));
 set_bit(intr, per_cpu_ptr(pcpu_masks, cpu));
}
