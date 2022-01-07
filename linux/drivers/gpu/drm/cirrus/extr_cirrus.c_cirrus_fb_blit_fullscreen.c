
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_rect {int y2; int y1; int x2; int x1; } ;
struct drm_framebuffer {int height; int width; } ;


 int cirrus_fb_blit_rect (struct drm_framebuffer*,struct drm_rect*) ;

__attribute__((used)) static int cirrus_fb_blit_fullscreen(struct drm_framebuffer *fb)
{
 struct drm_rect fullscreen = {
  .x1 = 0,
  .x2 = fb->width,
  .y1 = 0,
  .y2 = fb->height,
 };
 return cirrus_fb_blit_rect(fb, &fullscreen);
}
