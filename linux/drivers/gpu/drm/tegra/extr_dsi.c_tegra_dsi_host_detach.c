
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dev; } ;
struct tegra_output {TYPE_2__ connector; TYPE_1__* panel; } ;
struct tegra_dsi {struct tegra_output output; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {int dev; } ;
struct TYPE_3__ {int * dev; } ;


 int drm_helper_hpd_irq_event (scalar_t__) ;
 struct tegra_dsi* host_to_tegra (struct mipi_dsi_host*) ;

__attribute__((used)) static int tegra_dsi_host_detach(struct mipi_dsi_host *host,
     struct mipi_dsi_device *device)
{
 struct tegra_dsi *dsi = host_to_tegra(host);
 struct tegra_output *output = &dsi->output;

 if (output->panel && &device->dev == output->panel->dev) {
  output->panel = ((void*)0);

  if (output->connector.dev)
   drm_helper_hpd_irq_event(output->connector.dev);
 }

 return 0;
}
