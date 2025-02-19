
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int hsync_start; int hdisplay; int hsync_end; int htotal; int clock; } ;



__attribute__((used)) static void intel_tv_scale_mode_horiz(struct drm_display_mode *mode,
          int hdisplay, int left_margin,
          int right_margin)
{
 int hsync_start = mode->hsync_start - mode->hdisplay + right_margin;
 int hsync_end = mode->hsync_end - mode->hdisplay + right_margin;
 int new_htotal = mode->htotal * hdisplay /
  (mode->hdisplay - left_margin - right_margin);

 mode->clock = mode->clock * new_htotal / mode->htotal;

 mode->hdisplay = hdisplay;
 mode->hsync_start = hdisplay + hsync_start * new_htotal / mode->htotal;
 mode->hsync_end = hdisplay + hsync_end * new_htotal / mode->htotal;
 mode->htotal = new_htotal;
}
