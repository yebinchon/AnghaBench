
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun6i_dsi {int panel; struct mipi_dsi_device* device; } ;
struct mipi_dsi_host {int dev; } ;
struct TYPE_2__ {int of_node; } ;
struct mipi_dsi_device {int name; TYPE_1__ dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_info (int ,char*,int ) ;
 struct sun6i_dsi* host_to_sun6i_dsi (struct mipi_dsi_host*) ;
 int of_drm_find_panel (int ) ;

__attribute__((used)) static int sun6i_dsi_attach(struct mipi_dsi_host *host,
       struct mipi_dsi_device *device)
{
 struct sun6i_dsi *dsi = host_to_sun6i_dsi(host);

 dsi->device = device;
 dsi->panel = of_drm_find_panel(device->dev.of_node);
 if (IS_ERR(dsi->panel))
  return PTR_ERR(dsi->panel);

 dev_info(host->dev, "Attached device %s\n", device->name);

 return 0;
}
