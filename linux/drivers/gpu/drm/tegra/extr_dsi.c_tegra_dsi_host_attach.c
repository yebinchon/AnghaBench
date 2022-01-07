
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dev; } ;
struct tegra_output {TYPE_1__ connector; int * panel; } ;
struct tegra_dsi {struct tegra_output output; int master; int dev; scalar_t__ slave; int lanes; int format; int flags; } ;
struct mipi_dsi_host {int dummy; } ;
struct TYPE_4__ {int of_node; } ;
struct mipi_dsi_device {TYPE_2__ dev; int lanes; int format; int mode_flags; } ;


 scalar_t__ IS_ERR (int *) ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int) ;
 int dev_name (TYPE_2__*) ;
 int drm_helper_hpd_irq_event (scalar_t__) ;
 int drm_panel_attach (int *,TYPE_1__*) ;
 struct tegra_dsi* host_to_tegra (struct mipi_dsi_host*) ;
 int * of_drm_find_panel (int ) ;
 int tegra_dsi_ganged_setup (struct tegra_dsi*) ;

__attribute__((used)) static int tegra_dsi_host_attach(struct mipi_dsi_host *host,
     struct mipi_dsi_device *device)
{
 struct tegra_dsi *dsi = host_to_tegra(host);

 dsi->flags = device->mode_flags;
 dsi->format = device->format;
 dsi->lanes = device->lanes;

 if (dsi->slave) {
  int err;

  dev_dbg(dsi->dev, "attaching dual-channel device %s\n",
   dev_name(&device->dev));

  err = tegra_dsi_ganged_setup(dsi);
  if (err < 0) {
   dev_err(dsi->dev, "failed to set up ganged mode: %d\n",
    err);
   return err;
  }
 }





 if (!dsi->master) {
  struct tegra_output *output = &dsi->output;

  output->panel = of_drm_find_panel(device->dev.of_node);
  if (IS_ERR(output->panel))
   output->panel = ((void*)0);

  if (output->panel && output->connector.dev) {
   drm_panel_attach(output->panel, &output->connector);
   drm_helper_hpd_irq_event(output->connector.dev);
  }
 }

 return 0;
}
