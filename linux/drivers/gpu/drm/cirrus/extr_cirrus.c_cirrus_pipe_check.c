
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_simple_display_pipe {int dummy; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_framebuffer {int height; int width; } ;
struct drm_crtc_state {int dummy; } ;


 int cirrus_check_size (int ,int ,struct drm_framebuffer*) ;

__attribute__((used)) static int cirrus_pipe_check(struct drm_simple_display_pipe *pipe,
        struct drm_plane_state *plane_state,
        struct drm_crtc_state *crtc_state)
{
 struct drm_framebuffer *fb = plane_state->fb;

 if (!fb)
  return 0;
 return cirrus_check_size(fb->width, fb->height, fb);
}
