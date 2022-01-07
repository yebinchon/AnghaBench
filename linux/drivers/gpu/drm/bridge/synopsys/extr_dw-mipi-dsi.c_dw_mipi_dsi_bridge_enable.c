
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_mipi_dsi_phy_ops {int (* power_on ) (int ) ;} ;
struct dw_mipi_dsi {TYPE_1__* plat_data; struct dw_mipi_dsi* slave; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_2__ {int priv_data; struct dw_mipi_dsi_phy_ops* phy_ops; } ;


 int MIPI_DSI_MODE_VIDEO ;
 struct dw_mipi_dsi* bridge_to_dsi (struct drm_bridge*) ;
 int dw_mipi_dsi_set_mode (struct dw_mipi_dsi*,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void dw_mipi_dsi_bridge_enable(struct drm_bridge *bridge)
{
 struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
 const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;


 dw_mipi_dsi_set_mode(dsi, MIPI_DSI_MODE_VIDEO);
 if (dsi->slave)
  dw_mipi_dsi_set_mode(dsi->slave, MIPI_DSI_MODE_VIDEO);

 if (phy_ops->power_on)
  phy_ops->power_on(dsi->plat_data->priv_data);
}
