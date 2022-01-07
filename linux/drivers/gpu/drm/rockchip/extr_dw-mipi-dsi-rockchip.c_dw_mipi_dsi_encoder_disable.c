
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_mipi_dsi_rockchip {int dev; TYPE_1__* slave; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_put (int ) ;
 struct dw_mipi_dsi_rockchip* to_dsi (struct drm_encoder*) ;

__attribute__((used)) static void dw_mipi_dsi_encoder_disable(struct drm_encoder *encoder)
{
 struct dw_mipi_dsi_rockchip *dsi = to_dsi(encoder);

 if (dsi->slave)
  pm_runtime_put(dsi->slave->dev);
 pm_runtime_put(dsi->dev);
}
