
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps8622_bridge {int panel; } ;
struct drm_bridge {int dummy; } ;


 int DRM_ERROR (char*) ;
 int PS8622_PWMO_END_T12_MS ;
 struct ps8622_bridge* bridge_to_ps8622 (struct drm_bridge*) ;
 scalar_t__ drm_panel_disable (int ) ;
 int msleep (int ) ;

__attribute__((used)) static void ps8622_disable(struct drm_bridge *bridge)
{
 struct ps8622_bridge *ps8622 = bridge_to_ps8622(bridge);

 if (drm_panel_disable(ps8622->panel)) {
  DRM_ERROR("failed to disable panel\n");
  return;
 }
 msleep(PS8622_PWMO_END_T12_MS);
}
