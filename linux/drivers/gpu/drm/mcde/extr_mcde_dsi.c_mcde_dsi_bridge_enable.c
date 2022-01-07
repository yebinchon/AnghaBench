
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcde_dsi {int dev; } ;
struct drm_bridge {int dummy; } ;


 struct mcde_dsi* bridge_to_mcde_dsi (struct drm_bridge*) ;
 int dev_info (int ,char*) ;

__attribute__((used)) static void mcde_dsi_bridge_enable(struct drm_bridge *bridge)
{
 struct mcde_dsi *d = bridge_to_mcde_dsi(bridge);

 dev_info(d->dev, "enable DSI master\n");
}
