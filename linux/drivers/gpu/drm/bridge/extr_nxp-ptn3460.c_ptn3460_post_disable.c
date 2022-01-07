
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptn3460_bridge {int panel; } ;
struct drm_bridge {int dummy; } ;


 int DRM_ERROR (char*) ;
 struct ptn3460_bridge* bridge_to_ptn3460 (struct drm_bridge*) ;
 scalar_t__ drm_panel_unprepare (int ) ;

__attribute__((used)) static void ptn3460_post_disable(struct drm_bridge *bridge)
{
 struct ptn3460_bridge *ptn_bridge = bridge_to_ptn3460(bridge);

 if (drm_panel_unprepare(ptn_bridge->panel)) {
  DRM_ERROR("failed to unprepare panel\n");
  return;
 }
}
