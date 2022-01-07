
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dev; } ;
struct tegra_output {TYPE_1__ connector; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int drm_helper_hpd_irq_event (scalar_t__) ;

__attribute__((used)) static irqreturn_t hpd_irq(int irq, void *data)
{
 struct tegra_output *output = data;

 if (output->connector.dev)
  drm_helper_hpd_irq_event(output->connector.dev);

 return IRQ_HANDLED;
}
