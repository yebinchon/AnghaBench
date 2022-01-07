
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int BIT (int) ;
 int GIC_HWIRQ_TO_LOCAL (int ) ;
 int write_gic_vl_rmask (int ) ;

__attribute__((used)) static void gic_mask_local_irq(struct irq_data *d)
{
 int intr = GIC_HWIRQ_TO_LOCAL(d->hwirq);

 write_gic_vl_rmask(BIT(intr));
}
