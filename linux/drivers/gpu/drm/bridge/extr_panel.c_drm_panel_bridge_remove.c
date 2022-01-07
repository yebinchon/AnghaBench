
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panel_bridge {TYPE_1__* panel; } ;
struct drm_bridge {int * funcs; } ;
struct TYPE_2__ {int dev; } ;


 int devm_kfree (int ,struct drm_bridge*) ;
 int drm_bridge_remove (struct drm_bridge*) ;
 struct panel_bridge* drm_bridge_to_panel_bridge (struct drm_bridge*) ;
 int panel_bridge_bridge_funcs ;

void drm_panel_bridge_remove(struct drm_bridge *bridge)
{
 struct panel_bridge *panel_bridge;

 if (!bridge)
  return;

 if (bridge->funcs != &panel_bridge_bridge_funcs)
  return;

 panel_bridge = drm_bridge_to_panel_bridge(bridge);

 drm_bridge_remove(bridge);
 devm_kfree(panel_bridge->panel->dev, bridge);
}
