
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int height_mm; int width_mm; int vtotal; int htotal; int vsync_end; int hsync_end; int vsync_start; int hsync_start; int vdisplay; int hdisplay; } ;


 int EINVAL ;
 int swap (int ,int ) ;

__attribute__((used)) static int mipi_dbi_rotate_mode(struct drm_display_mode *mode,
    unsigned int rotation)
{
 if (rotation == 0 || rotation == 180) {
  return 0;
 } else if (rotation == 90 || rotation == 270) {
  swap(mode->hdisplay, mode->vdisplay);
  swap(mode->hsync_start, mode->vsync_start);
  swap(mode->hsync_end, mode->vsync_end);
  swap(mode->htotal, mode->vtotal);
  swap(mode->width_mm, mode->height_mm);
  return 0;
 } else {
  return -EINVAL;
 }
}
