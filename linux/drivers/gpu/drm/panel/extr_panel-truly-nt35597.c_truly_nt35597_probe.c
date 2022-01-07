
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct truly_nt35597 {int panel; struct mipi_dsi_device** dsi; struct device* dev; int config; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device_info {char* type; int * node; int channel; } ;
struct device {int of_node; } ;
struct mipi_dsi_device {int lanes; int mode_flags; int format; struct device dev; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (struct mipi_dsi_device**) ;
 int DRM_DEV_ERROR (struct device*,char*,...) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mipi_dsi_device*) ;
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ;
 int MIPI_DSI_FMT_RGB888 ;
 int MIPI_DSI_MODE_LPM ;
 int MIPI_DSI_MODE_VIDEO ;
 int PTR_ERR (struct mipi_dsi_device*) ;
 int dev_err (struct device*,char*) ;
 struct truly_nt35597* devm_kzalloc (struct device*,int,int ) ;
 int drm_panel_remove (int *) ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 struct mipi_dsi_device* mipi_dsi_device_register_full (struct mipi_dsi_host*,struct mipi_dsi_device_info const*) ;
 int mipi_dsi_device_unregister (struct mipi_dsi_device*) ;
 int mipi_dsi_set_drvdata (struct mipi_dsi_device*,struct truly_nt35597*) ;
 int of_device_get_match_data (struct device*) ;
 struct mipi_dsi_host* of_find_mipi_dsi_host_by_node (struct device_node*) ;
 struct device_node* of_graph_get_remote_node (int ,int,int) ;
 int of_node_put (struct device_node*) ;
 int truly_nt35597_panel_add (struct truly_nt35597*) ;

__attribute__((used)) static int truly_nt35597_probe(struct mipi_dsi_device *dsi)
{
 struct device *dev = &dsi->dev;
 struct truly_nt35597 *ctx;
 struct mipi_dsi_device *dsi1_device;
 struct device_node *dsi1;
 struct mipi_dsi_host *dsi1_host;
 struct mipi_dsi_device *dsi_dev;
 int ret = 0;
 int i;

 const struct mipi_dsi_device_info info = {
  .type = "trulynt35597",
  .channel = 0,
  .node = ((void*)0),
 };

 ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);

 if (!ctx)
  return -ENOMEM;
 ctx->config = of_device_get_match_data(dev);

 if (!ctx->config) {
  dev_err(dev, "missing device configuration\n");
  return -ENODEV;
 }

 dsi1 = of_graph_get_remote_node(dsi->dev.of_node, 1, -1);
 if (!dsi1) {
  DRM_DEV_ERROR(dev,
   "failed to get remote node for dsi1_device\n");
  return -ENODEV;
 }

 dsi1_host = of_find_mipi_dsi_host_by_node(dsi1);
 of_node_put(dsi1);
 if (!dsi1_host) {
  DRM_DEV_ERROR(dev, "failed to find dsi host\n");
  return -EPROBE_DEFER;
 }


 dsi1_device = mipi_dsi_device_register_full(dsi1_host, &info);
 if (IS_ERR(dsi1_device)) {
  DRM_DEV_ERROR(dev, "failed to create dsi device\n");
  return PTR_ERR(dsi1_device);
 }

 mipi_dsi_set_drvdata(dsi, ctx);

 ctx->dev = dev;
 ctx->dsi[0] = dsi;
 ctx->dsi[1] = dsi1_device;

 ret = truly_nt35597_panel_add(ctx);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to add panel\n");
  goto err_panel_add;
 }

 for (i = 0; i < ARRAY_SIZE(ctx->dsi); i++) {
  dsi_dev = ctx->dsi[i];
  dsi_dev->lanes = 4;
  dsi_dev->format = MIPI_DSI_FMT_RGB888;
  dsi_dev->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_LPM |
   MIPI_DSI_CLOCK_NON_CONTINUOUS;
  ret = mipi_dsi_attach(dsi_dev);
  if (ret < 0) {
   DRM_DEV_ERROR(dev,
    "dsi attach failed i = %d\n", i);
   goto err_dsi_attach;
  }
 }

 return 0;

err_dsi_attach:
 drm_panel_remove(&ctx->panel);
err_panel_add:
 mipi_dsi_device_unregister(dsi1_device);
 return ret;
}
