
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcde_dsi {int prcmu; int bridge_out; scalar_t__ panel; } ;
struct device {int dummy; } ;


 int PRCM_DSI_SW_RESET ;
 int PRCM_DSI_SW_RESET_DSI0_SW_RESETN ;
 struct mcde_dsi* dev_get_drvdata (struct device*) ;
 int drm_panel_bridge_remove (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void mcde_dsi_unbind(struct device *dev, struct device *master,
       void *data)
{
 struct mcde_dsi *d = dev_get_drvdata(dev);

 if (d->panel)
  drm_panel_bridge_remove(d->bridge_out);
 regmap_update_bits(d->prcmu, PRCM_DSI_SW_RESET,
      PRCM_DSI_SW_RESET_DSI0_SW_RESETN, 0);
}
