
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_output {TYPE_1__* ddc; int hpd_irq; scalar_t__ hpd_gpio; scalar_t__ cec; } ;
struct TYPE_2__ {int dev; } ;


 int cec_notifier_put (scalar_t__) ;
 int free_irq (int ,struct tegra_output*) ;
 int put_device (int *) ;

void tegra_output_remove(struct tegra_output *output)
{
 if (output->cec)
  cec_notifier_put(output->cec);

 if (output->hpd_gpio)
  free_irq(output->hpd_irq, output);

 if (output->ddc)
  put_device(&output->ddc->dev);
}
