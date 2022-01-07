
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_drm_front_drm_pipeline {int conn_connected; } ;
struct TYPE_2__ {int dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;


 int DRM_ERROR (char*,int) ;
 scalar_t__ drm_dev_enter (int ,int*) ;
 int drm_dev_exit (int) ;
 int send_pending_event (struct xen_drm_front_drm_pipeline*) ;
 struct xen_drm_front_drm_pipeline* to_xen_drm_pipeline (struct drm_simple_display_pipe*) ;
 int xen_drm_front_fb_to_cookie (int *) ;
 int xen_drm_front_mode_set (struct xen_drm_front_drm_pipeline*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void display_disable(struct drm_simple_display_pipe *pipe)
{
 struct xen_drm_front_drm_pipeline *pipeline =
   to_xen_drm_pipeline(pipe);
 int ret = 0, idx;

 if (drm_dev_enter(pipe->crtc.dev, &idx)) {
  ret = xen_drm_front_mode_set(pipeline, 0, 0, 0, 0, 0,
          xen_drm_front_fb_to_cookie(((void*)0)));
  drm_dev_exit(idx);
 }
 if (ret)
  DRM_ERROR("Failed to disable display: %d\n", ret);


 pipeline->conn_connected = 1;


 send_pending_event(pipeline);
}
