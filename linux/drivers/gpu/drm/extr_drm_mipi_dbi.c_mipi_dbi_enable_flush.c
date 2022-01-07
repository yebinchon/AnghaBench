
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dbi_dev {int enabled; int backlight; int drm; } ;
struct drm_rect {int y2; int y1; int x2; int x1; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_framebuffer {int height; int width; } ;
struct drm_crtc_state {int dummy; } ;


 int backlight_enable (int ) ;
 int drm_dev_enter (int *,int*) ;
 int drm_dev_exit (int) ;
 int mipi_dbi_fb_dirty (struct drm_framebuffer*,struct drm_rect*) ;

void mipi_dbi_enable_flush(struct mipi_dbi_dev *dbidev,
      struct drm_crtc_state *crtc_state,
      struct drm_plane_state *plane_state)
{
 struct drm_framebuffer *fb = plane_state->fb;
 struct drm_rect rect = {
  .x1 = 0,
  .x2 = fb->width,
  .y1 = 0,
  .y2 = fb->height,
 };
 int idx;

 if (!drm_dev_enter(&dbidev->drm, &idx))
  return;

 dbidev->enabled = 1;
 mipi_dbi_fb_dirty(fb, &rect);
 backlight_enable(dbidev->backlight);

 drm_dev_exit(idx);
}
