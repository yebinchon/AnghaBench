
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kingdisplay_panel {int enabled; int backlight; } ;
struct drm_panel {TYPE_1__* drm; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int backlight_enable (int ) ;
 struct kingdisplay_panel* to_kingdisplay_panel (struct drm_panel*) ;

__attribute__((used)) static int kingdisplay_panel_enable(struct drm_panel *panel)
{
 struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
 int ret;

 if (kingdisplay->enabled)
  return 0;

 ret = backlight_enable(kingdisplay->backlight);
 if (ret) {
  DRM_DEV_ERROR(panel->drm->dev,
         "Failed to enable backlight %d\n", ret);
  return ret;
 }

 kingdisplay->enabled = 1;

 return 0;
}
