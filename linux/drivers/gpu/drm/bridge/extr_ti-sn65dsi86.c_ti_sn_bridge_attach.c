
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sn_bridge {int connector; int panel; struct mipi_dsi_device* dsi; int dev; int regmap; int host_node; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device_info {char* type; int * node; int channel; } ;
struct mipi_dsi_device {int lanes; int mode_flags; int format; } ;
struct drm_bridge {int encoder; int dev; } ;


 int DPPLL_CLK_SRC_DSICLK ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_CONNECTOR_eDP ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct mipi_dsi_device*) ;
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ;
 int MIPI_DSI_FMT_RGB888 ;
 int MIPI_DSI_MODE_VIDEO ;
 int PTR_ERR (struct mipi_dsi_device*) ;
 int SN_DPPLL_SRC_REG ;
 struct ti_sn_bridge* bridge_to_ti_sn_bridge (struct drm_bridge*) ;
 int drm_connector_attach_encoder (int *,int ) ;
 int drm_connector_cleanup (int *) ;
 int drm_connector_helper_add (int *,int *) ;
 int drm_connector_init (int ,int *,int *,int ) ;
 int drm_panel_attach (int ,int *) ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 struct mipi_dsi_device* mipi_dsi_device_register_full (struct mipi_dsi_host*,struct mipi_dsi_device_info const*) ;
 int mipi_dsi_device_unregister (struct mipi_dsi_device*) ;
 struct mipi_dsi_host* of_find_mipi_dsi_host_by_node (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int regmap_read (int ,int ,int*) ;
 int ti_sn_bridge_connector_funcs ;
 int ti_sn_bridge_connector_helper_funcs ;

__attribute__((used)) static int ti_sn_bridge_attach(struct drm_bridge *bridge)
{
 int ret, val;
 struct ti_sn_bridge *pdata = bridge_to_ti_sn_bridge(bridge);
 struct mipi_dsi_host *host;
 struct mipi_dsi_device *dsi;
 const struct mipi_dsi_device_info info = { .type = "ti_sn_bridge",
         .channel = 0,
         .node = ((void*)0),
       };

 ret = drm_connector_init(bridge->dev, &pdata->connector,
     &ti_sn_bridge_connector_funcs,
     DRM_MODE_CONNECTOR_eDP);
 if (ret) {
  DRM_ERROR("Failed to initialize connector with drm\n");
  return ret;
 }

 drm_connector_helper_add(&pdata->connector,
     &ti_sn_bridge_connector_helper_funcs);
 drm_connector_attach_encoder(&pdata->connector, bridge->encoder);
 host = of_find_mipi_dsi_host_by_node(pdata->host_node);
 if (!host) {
  DRM_ERROR("failed to find dsi host\n");
  ret = -ENODEV;
  goto err_dsi_host;
 }

 dsi = mipi_dsi_device_register_full(host, &info);
 if (IS_ERR(dsi)) {
  DRM_ERROR("failed to create dsi device\n");
  ret = PTR_ERR(dsi);
  goto err_dsi_host;
 }


 dsi->lanes = 4;
 dsi->format = MIPI_DSI_FMT_RGB888;
 dsi->mode_flags = MIPI_DSI_MODE_VIDEO;


 pm_runtime_get_sync(pdata->dev);
 regmap_read(pdata->regmap, SN_DPPLL_SRC_REG, &val);
 pm_runtime_put(pdata->dev);
 if (!(val & DPPLL_CLK_SRC_DSICLK))
  dsi->mode_flags |= MIPI_DSI_CLOCK_NON_CONTINUOUS;

 ret = mipi_dsi_attach(dsi);
 if (ret < 0) {
  DRM_ERROR("failed to attach dsi to host\n");
  goto err_dsi_attach;
 }
 pdata->dsi = dsi;


 drm_panel_attach(pdata->panel, &pdata->connector);

 return 0;

err_dsi_attach:
 mipi_dsi_device_unregister(dsi);
err_dsi_host:
 drm_connector_cleanup(&pdata->connector);
 return ret;
}
