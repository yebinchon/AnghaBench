
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int hwirq; } ;
struct TYPE_2__ {int enabled_mask; } ;
struct dpu_mdss {TYPE_1__ irq_controller; } ;


 struct dpu_mdss* irq_data_get_irq_chip_data (struct irq_data*) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static void dpu_mdss_irq_unmask(struct irq_data *irqd)
{
 struct dpu_mdss *dpu_mdss = irq_data_get_irq_chip_data(irqd);


 smp_mb__before_atomic();
 set_bit(irqd->hwirq, &dpu_mdss->irq_controller.enabled_mask);

 smp_mb__after_atomic();
}
