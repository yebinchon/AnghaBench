
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mipi_dsi_host {int dev; } ;
struct TYPE_6__ {int of_node; } ;
struct mipi_dsi_device {int mode_flags; int name; TYPE_3__ dev; int channel; } ;
struct drm_panel {int dummy; } ;
typedef struct drm_panel drm_bridge ;
struct device_node {int dummy; } ;
struct cdns_dsi_output {struct drm_panel* panel; struct drm_panel* bridge; struct mipi_dsi_device* dev; } ;
struct cdns_dsi_input {int bridge; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct cdns_dsi {TYPE_2__ base; struct cdns_dsi_input input; struct cdns_dsi_output output; } ;
struct TYPE_4__ {int of_node; } ;


 int DRM_MODE_CONNECTOR_DSI ;
 int DSI_OUTPUT_PORT ;
 int EBUSY ;
 int EINVAL ;
 int ENOTSUPP ;
 struct drm_panel* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct drm_panel*) ;
 int MIPI_DSI_MODE_VIDEO_BURST ;
 int PTR_ERR (struct drm_panel*) ;
 int dev_err (int ,char*,int ,int) ;
 int drm_bridge_add (int *) ;
 struct drm_panel* drm_panel_bridge_add (struct drm_panel*,int ) ;
 struct drm_panel* of_drm_find_bridge (int ) ;
 struct drm_panel* of_drm_find_panel (struct device_node*) ;
 struct device_node* of_graph_get_remote_node (int ,int ,int ) ;
 struct device_node* of_node_get (int ) ;
 int of_node_put (struct device_node*) ;
 struct cdns_dsi* to_cdns_dsi (struct mipi_dsi_host*) ;

__attribute__((used)) static int cdns_dsi_attach(struct mipi_dsi_host *host,
      struct mipi_dsi_device *dev)
{
 struct cdns_dsi *dsi = to_cdns_dsi(host);
 struct cdns_dsi_output *output = &dsi->output;
 struct cdns_dsi_input *input = &dsi->input;
 struct drm_bridge *bridge;
 struct drm_panel *panel;
 struct device_node *np;
 int ret;






 if (output->dev)
  return -EBUSY;


 if (dev->mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
  return -ENOTSUPP;







 np = of_graph_get_remote_node(dsi->base.dev->of_node, DSI_OUTPUT_PORT,
          dev->channel);
 if (!np)
  np = of_node_get(dev->dev.of_node);

 panel = of_drm_find_panel(np);
 if (!IS_ERR(panel)) {
  bridge = drm_panel_bridge_add(panel, DRM_MODE_CONNECTOR_DSI);
 } else {
  bridge = of_drm_find_bridge(dev->dev.of_node);
  if (!bridge)
   bridge = ERR_PTR(-EINVAL);
 }

 of_node_put(np);

 if (IS_ERR(bridge)) {
  ret = PTR_ERR(bridge);
  dev_err(host->dev, "failed to add DSI device %s (err = %d)",
   dev->name, ret);
  return ret;
 }

 output->dev = dev;
 output->bridge = bridge;
 output->panel = panel;






 drm_bridge_add(&input->bridge);

 return 0;
}
