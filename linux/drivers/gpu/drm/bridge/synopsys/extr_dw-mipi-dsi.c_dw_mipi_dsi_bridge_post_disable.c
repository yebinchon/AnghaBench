
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dw_mipi_dsi_phy_ops {int (* power_off ) (int ) ;} ;
struct dw_mipi_dsi {int dev; int pclk; struct dw_mipi_dsi* slave; TYPE_3__* panel_bridge; TYPE_1__* plat_data; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_6__ {TYPE_2__* funcs; } ;
struct TYPE_5__ {int (* post_disable ) (TYPE_3__*) ;} ;
struct TYPE_4__ {int priv_data; struct dw_mipi_dsi_phy_ops* phy_ops; } ;


 struct dw_mipi_dsi* bridge_to_dsi (struct drm_bridge*) ;
 int clk_disable_unprepare (int ) ;
 int dw_mipi_dsi_disable (struct dw_mipi_dsi*) ;
 int dw_mipi_dsi_set_mode (struct dw_mipi_dsi*,int ) ;
 int pm_runtime_put (int ) ;
 int stub1 (int ) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
{
 struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
 const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;

 if (phy_ops->power_off)
  phy_ops->power_off(dsi->plat_data->priv_data);







 dw_mipi_dsi_set_mode(dsi, 0);







 dsi->panel_bridge->funcs->post_disable(dsi->panel_bridge);

 if (dsi->slave) {
  dw_mipi_dsi_disable(dsi->slave);
  clk_disable_unprepare(dsi->slave->pclk);
  pm_runtime_put(dsi->slave->dev);
 }
 dw_mipi_dsi_disable(dsi);

 clk_disable_unprepare(dsi->pclk);
 pm_runtime_put(dsi->dev);
}
