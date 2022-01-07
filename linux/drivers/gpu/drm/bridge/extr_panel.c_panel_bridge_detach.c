
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_bridge {int panel; } ;
struct drm_bridge {int dummy; } ;


 struct panel_bridge* drm_bridge_to_panel_bridge (struct drm_bridge*) ;
 int drm_panel_detach (int ) ;

__attribute__((used)) static void panel_bridge_detach(struct drm_bridge *bridge)
{
 struct panel_bridge *panel_bridge = drm_bridge_to_panel_bridge(bridge);

 drm_panel_detach(panel_bridge->panel);
}
