
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_dsi_encoder {struct vc4_dsi* dsi; } ;
struct vc4_dsi {int pixel_clock; int escape_clock; int pll_phy_clock; int bridge; TYPE_1__* pdev; } ;
struct drm_encoder {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int clk_disable_unprepare (int ) ;
 int drm_bridge_disable (int ) ;
 int drm_bridge_post_disable (int ) ;
 int pm_runtime_put (struct device*) ;
 struct vc4_dsi_encoder* to_vc4_dsi_encoder (struct drm_encoder*) ;
 int vc4_dsi_ulps (struct vc4_dsi*,int) ;

__attribute__((used)) static void vc4_dsi_encoder_disable(struct drm_encoder *encoder)
{
 struct vc4_dsi_encoder *vc4_encoder = to_vc4_dsi_encoder(encoder);
 struct vc4_dsi *dsi = vc4_encoder->dsi;
 struct device *dev = &dsi->pdev->dev;

 drm_bridge_disable(dsi->bridge);
 vc4_dsi_ulps(dsi, 1);
 drm_bridge_post_disable(dsi->bridge);

 clk_disable_unprepare(dsi->pll_phy_clock);
 clk_disable_unprepare(dsi->escape_clock);
 clk_disable_unprepare(dsi->pixel_clock);

 pm_runtime_put(dev);
}
