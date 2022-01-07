
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_drm_front_drm_pipeline {int conn_connected; } ;
struct drm_crtc {int y; int x; int dev; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_framebuffer {TYPE_1__* format; int height; int width; } ;
struct drm_crtc_state {int dummy; } ;
struct TYPE_2__ {int* cpp; } ;


 int DRM_ERROR (char*,int) ;
 int drm_dev_enter (int ,int*) ;
 int drm_dev_exit (int) ;
 struct xen_drm_front_drm_pipeline* to_xen_drm_pipeline (struct drm_simple_display_pipe*) ;
 int xen_drm_front_fb_to_cookie (struct drm_framebuffer*) ;
 int xen_drm_front_mode_set (struct xen_drm_front_drm_pipeline*,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static void display_enable(struct drm_simple_display_pipe *pipe,
      struct drm_crtc_state *crtc_state,
      struct drm_plane_state *plane_state)
{
 struct xen_drm_front_drm_pipeline *pipeline =
   to_xen_drm_pipeline(pipe);
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_framebuffer *fb = plane_state->fb;
 int ret, idx;

 if (!drm_dev_enter(pipe->crtc.dev, &idx))
  return;

 ret = xen_drm_front_mode_set(pipeline, crtc->x, crtc->y,
         fb->width, fb->height,
         fb->format->cpp[0] * 8,
         xen_drm_front_fb_to_cookie(fb));

 if (ret) {
  DRM_ERROR("Failed to enable display: %d\n", ret);
  pipeline->conn_connected = 0;
 }

 drm_dev_exit(idx);
}
