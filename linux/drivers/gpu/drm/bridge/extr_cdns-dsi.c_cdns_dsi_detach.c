
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {int dummy; } ;
struct cdns_dsi_output {int bridge; scalar_t__ panel; } ;
struct cdns_dsi_input {int bridge; } ;
struct cdns_dsi {struct cdns_dsi_input input; struct cdns_dsi_output output; } ;


 int drm_bridge_remove (int *) ;
 int drm_panel_bridge_remove (int ) ;
 struct cdns_dsi* to_cdns_dsi (struct mipi_dsi_host*) ;

__attribute__((used)) static int cdns_dsi_detach(struct mipi_dsi_host *host,
      struct mipi_dsi_device *dev)
{
 struct cdns_dsi *dsi = to_cdns_dsi(host);
 struct cdns_dsi_output *output = &dsi->output;
 struct cdns_dsi_input *input = &dsi->input;

 drm_bridge_remove(&input->bridge);
 if (output->panel)
  drm_panel_bridge_remove(output->bridge);

 return 0;
}
