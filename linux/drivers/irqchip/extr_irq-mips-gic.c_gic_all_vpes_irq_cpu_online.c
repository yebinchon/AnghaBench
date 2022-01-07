
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct gic_all_vpes_chip_data {scalar_t__ mask; int map; } ;


 int BIT (unsigned int) ;
 unsigned int GIC_HWIRQ_TO_LOCAL (int ) ;
 struct gic_all_vpes_chip_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mips_gic_vx_map_reg (unsigned int) ;
 int write_gic_vl_map (int ,int ) ;
 int write_gic_vl_smask (int ) ;

__attribute__((used)) static void gic_all_vpes_irq_cpu_online(struct irq_data *d)
{
 struct gic_all_vpes_chip_data *cd;
 unsigned int intr;

 intr = GIC_HWIRQ_TO_LOCAL(d->hwirq);
 cd = irq_data_get_irq_chip_data(d);

 write_gic_vl_map(mips_gic_vx_map_reg(intr), cd->map);
 if (cd->mask)
  write_gic_vl_smask(BIT(intr));
}
