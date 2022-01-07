
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kingdisplay_panel {int enabled; int link; int backlight; } ;
struct drm_panel {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int backlight_disable (int ) ;
 int mipi_dsi_dcs_set_display_off (int ) ;
 struct kingdisplay_panel* to_kingdisplay_panel (struct drm_panel*) ;

__attribute__((used)) static int kingdisplay_panel_disable(struct drm_panel *panel)
{
 struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
 int err;

 if (!kingdisplay->enabled)
  return 0;

 backlight_disable(kingdisplay->backlight);

 err = mipi_dsi_dcs_set_display_off(kingdisplay->link);
 if (err < 0)
  DRM_DEV_ERROR(panel->dev, "failed to set display off: %d\n",
         err);

 kingdisplay->enabled = 0;

 return 0;
}
