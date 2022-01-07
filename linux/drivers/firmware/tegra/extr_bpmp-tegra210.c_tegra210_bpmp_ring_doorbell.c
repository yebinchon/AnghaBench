
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp {struct tegra210_bpmp* priv; } ;
struct tegra210_bpmp {struct irq_data* tx_irq_data; } ;
struct irq_data {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* irq_retrigger ) (struct irq_data*) ;} ;


 int EINVAL ;
 int stub1 (struct irq_data*) ;

__attribute__((used)) static int tegra210_bpmp_ring_doorbell(struct tegra_bpmp *bpmp)
{
 struct tegra210_bpmp *priv = bpmp->priv;
 struct irq_data *irq_data = priv->tx_irq_data;





 if (irq_data->chip->irq_retrigger)
  return irq_data->chip->irq_retrigger(irq_data);

 return -EINVAL;
}
