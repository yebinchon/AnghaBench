
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int htotal; int hdisplay; int hsync_end; int hsync_start; int vsync_start; int vdisplay; } ;



__attribute__((used)) static bool
mode_is_rb(const struct drm_display_mode *mode)
{
 return (mode->htotal - mode->hdisplay == 160) &&
        (mode->hsync_end - mode->hdisplay == 80) &&
        (mode->hsync_end - mode->hsync_start == 32) &&
        (mode->vsync_start - mode->vdisplay == 3);
}
