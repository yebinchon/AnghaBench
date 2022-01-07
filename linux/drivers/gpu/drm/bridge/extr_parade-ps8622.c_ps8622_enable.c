
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps8622_bridge {int panel; } ;
struct drm_bridge {int dummy; } ;


 int DRM_ERROR (char*) ;
 struct ps8622_bridge* bridge_to_ps8622 (struct drm_bridge*) ;
 scalar_t__ drm_panel_enable (int ) ;

__attribute__((used)) static void ps8622_enable(struct drm_bridge *bridge)
{
 struct ps8622_bridge *ps8622 = bridge_to_ps8622(bridge);

 if (drm_panel_enable(ps8622->panel)) {
  DRM_ERROR("failed to enable panel\n");
  return;
 }
}
