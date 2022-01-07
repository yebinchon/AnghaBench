
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dw_mipi_dsi_rockchip {int grf_clk; struct dw_mipi_dsi_rockchip* slave; TYPE_1__* dev; int encoder; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_3__ {int of_node; } ;


 int DRM_DEV_ERROR (TYPE_1__*,char*,int) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int drm_of_encoder_active_endpoint_id (int ,int *) ;
 int dw_mipi_dsi_rockchip_config (struct dw_mipi_dsi_rockchip*,int) ;
 int pm_runtime_get_sync (TYPE_1__*) ;
 struct dw_mipi_dsi_rockchip* to_dsi (struct drm_encoder*) ;

__attribute__((used)) static void dw_mipi_dsi_encoder_enable(struct drm_encoder *encoder)
{
 struct dw_mipi_dsi_rockchip *dsi = to_dsi(encoder);
 int ret, mux;

 mux = drm_of_encoder_active_endpoint_id(dsi->dev->of_node,
      &dsi->encoder);
 if (mux < 0)
  return;

 pm_runtime_get_sync(dsi->dev);
 if (dsi->slave)
  pm_runtime_get_sync(dsi->slave->dev);






 ret = clk_prepare_enable(dsi->grf_clk);
 if (ret) {
  DRM_DEV_ERROR(dsi->dev, "Failed to enable grf_clk: %d\n", ret);
  return;
 }

 dw_mipi_dsi_rockchip_config(dsi, mux);
 if (dsi->slave)
  dw_mipi_dsi_rockchip_config(dsi->slave, mux);

 clk_disable_unprepare(dsi->grf_clk);
}
