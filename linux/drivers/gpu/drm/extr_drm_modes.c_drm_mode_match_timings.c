
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ hsync_start; scalar_t__ hsync_end; scalar_t__ htotal; scalar_t__ hskew; scalar_t__ vdisplay; scalar_t__ vsync_start; scalar_t__ vsync_end; scalar_t__ vtotal; scalar_t__ vscan; } ;



__attribute__((used)) static bool drm_mode_match_timings(const struct drm_display_mode *mode1,
       const struct drm_display_mode *mode2)
{
 return mode1->hdisplay == mode2->hdisplay &&
  mode1->hsync_start == mode2->hsync_start &&
  mode1->hsync_end == mode2->hsync_end &&
  mode1->htotal == mode2->htotal &&
  mode1->hskew == mode2->hskew &&
  mode1->vdisplay == mode2->vdisplay &&
  mode1->vsync_start == mode2->vsync_start &&
  mode1->vsync_end == mode2->vsync_end &&
  mode1->vtotal == mode2->vtotal &&
  mode1->vscan == mode2->vscan;
}
