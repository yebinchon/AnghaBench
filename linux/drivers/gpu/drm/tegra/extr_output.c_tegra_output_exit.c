
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_output {scalar_t__ panel; int hpd_irq; scalar_t__ hpd_gpio; } ;


 int disable_irq (int ) ;
 int drm_panel_detach (scalar_t__) ;

void tegra_output_exit(struct tegra_output *output)
{




 if (output->hpd_gpio)
  disable_irq(output->hpd_irq);

 if (output->panel)
  drm_panel_detach(output->panel);
}
