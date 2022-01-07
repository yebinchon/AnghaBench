
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int ICTLR_CPU_IER_SET ;
 int irq_chip_unmask_parent (struct irq_data*) ;
 int tegra_ictlr_write_mask (struct irq_data*,int ) ;

__attribute__((used)) static void tegra_unmask(struct irq_data *d)
{
 tegra_ictlr_write_mask(d, ICTLR_CPU_IER_SET);
 irq_chip_unmask_parent(d);
}
