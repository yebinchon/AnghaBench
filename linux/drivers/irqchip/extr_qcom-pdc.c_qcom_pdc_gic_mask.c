
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int irq_chip_mask_parent (struct irq_data*) ;
 int pdc_enable_intr (struct irq_data*,int) ;

__attribute__((used)) static void qcom_pdc_gic_mask(struct irq_data *d)
{
 pdc_enable_intr(d, 0);
 irq_chip_mask_parent(d);
}
