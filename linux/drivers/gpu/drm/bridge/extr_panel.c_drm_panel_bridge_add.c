
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_bridge {int of_node; int * funcs; } ;
struct panel_bridge {struct drm_bridge bridge; struct drm_panel* panel; int connector_type; } ;
struct drm_panel {TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 struct drm_bridge* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct panel_bridge* devm_kzalloc (TYPE_1__*,int,int ) ;
 int drm_bridge_add (struct drm_bridge*) ;
 int panel_bridge_bridge_funcs ;

struct drm_bridge *drm_panel_bridge_add(struct drm_panel *panel,
     u32 connector_type)
{
 struct panel_bridge *panel_bridge;

 if (!panel)
  return ERR_PTR(-EINVAL);

 panel_bridge = devm_kzalloc(panel->dev, sizeof(*panel_bridge),
        GFP_KERNEL);
 if (!panel_bridge)
  return ERR_PTR(-ENOMEM);

 panel_bridge->connector_type = connector_type;
 panel_bridge->panel = panel;

 panel_bridge->bridge.funcs = &panel_bridge_bridge_funcs;




 drm_bridge_add(&panel_bridge->bridge);

 return &panel_bridge->bridge;
}
