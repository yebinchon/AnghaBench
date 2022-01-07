
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 unsigned int GIC_HWIRQ_TO_SHARED (int ) ;
 int gic_clear_pcpu_masks (unsigned int) ;
 int write_gic_rmask (unsigned int) ;

__attribute__((used)) static void gic_mask_irq(struct irq_data *d)
{
 unsigned int intr = GIC_HWIRQ_TO_SHARED(d->hwirq);

 write_gic_rmask(intr);
 gic_clear_pcpu_masks(intr);
}
