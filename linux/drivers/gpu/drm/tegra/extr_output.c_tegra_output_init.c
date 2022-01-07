
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_output {int hpd_irq; scalar_t__ hpd_gpio; int connector; scalar_t__ panel; } ;
struct drm_device {int dummy; } ;


 int drm_panel_attach (scalar_t__,int *) ;
 int enable_irq (int ) ;

int tegra_output_init(struct drm_device *drm, struct tegra_output *output)
{
 int err;

 if (output->panel) {
  err = drm_panel_attach(output->panel, &output->connector);
  if (err < 0)
   return err;
 }





 if (output->hpd_gpio)
  enable_irq(output->hpd_irq);

 return 0;
}
