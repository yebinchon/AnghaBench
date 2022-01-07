
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled_mask; } ;
struct mdp5_mdss {TYPE_1__ irqcontroller; } ;
struct irq_data {int hwirq; } ;


 struct mdp5_mdss* irq_data_get_irq_chip_data (struct irq_data*) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static void mdss_hw_unmask_irq(struct irq_data *irqd)
{
 struct mdp5_mdss *mdp5_mdss = irq_data_get_irq_chip_data(irqd);

 smp_mb__before_atomic();
 set_bit(irqd->hwirq, &mdp5_mdss->irqcontroller.enabled_mask);
 smp_mb__after_atomic();
}
