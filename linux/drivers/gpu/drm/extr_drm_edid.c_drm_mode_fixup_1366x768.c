
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int hdisplay; int vdisplay; int hsync_end; int hsync_start; } ;


 int drm_mode_set_name (struct drm_display_mode*) ;

void drm_mode_fixup_1366x768(struct drm_display_mode *mode)
{
 if (mode->hdisplay == 1368 && mode->vdisplay == 768) {
  mode->hdisplay = 1366;
  mode->hsync_start--;
  mode->hsync_end--;
  drm_mode_set_name(mode);
 }
}
