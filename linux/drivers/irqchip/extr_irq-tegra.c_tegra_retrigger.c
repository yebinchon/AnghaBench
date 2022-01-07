
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int ICTLR_CPU_IEP_FIR_SET ;
 int irq_chip_retrigger_hierarchy (struct irq_data*) ;
 int tegra_ictlr_write_mask (struct irq_data*,int ) ;

__attribute__((used)) static int tegra_retrigger(struct irq_data *d)
{
 tegra_ictlr_write_mask(d, ICTLR_CPU_IEP_FIR_SET);
 return irq_chip_retrigger_hierarchy(d);
}
