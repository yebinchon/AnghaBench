
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_drm_front_drm_pipeline {int conn_connected; int index; int pflip_to_worker; struct xen_drm_front_drm_info* drm_info; } ;
struct xen_drm_front_drm_info {int front_info; } ;
struct drm_simple_display_pipe {int plane; } ;
struct drm_plane_state {scalar_t__ fb; int state; } ;


 int DRM_ERROR (char*,int) ;
 int FRAME_DONE_TO_MS ;
 struct drm_plane_state* drm_atomic_get_new_plane_state (int ,int *) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;
 struct xen_drm_front_drm_pipeline* to_xen_drm_pipeline (struct drm_simple_display_pipe*) ;
 int xen_drm_front_fb_to_cookie (scalar_t__) ;
 int xen_drm_front_page_flip (int ,int ,int ) ;

__attribute__((used)) static bool display_send_page_flip(struct drm_simple_display_pipe *pipe,
       struct drm_plane_state *old_plane_state)
{
 struct drm_plane_state *plane_state =
   drm_atomic_get_new_plane_state(old_plane_state->state,
             &pipe->plane);
 if (old_plane_state->fb && plane_state->fb) {
  struct xen_drm_front_drm_pipeline *pipeline =
    to_xen_drm_pipeline(pipe);
  struct xen_drm_front_drm_info *drm_info = pipeline->drm_info;
  int ret;

  schedule_delayed_work(&pipeline->pflip_to_worker,
          msecs_to_jiffies(FRAME_DONE_TO_MS));

  ret = xen_drm_front_page_flip(drm_info->front_info,
           pipeline->index,
           xen_drm_front_fb_to_cookie(plane_state->fb));
  if (ret) {
   DRM_ERROR("Failed to send page flip request to backend: %d\n", ret);

   pipeline->conn_connected = 0;




   return 0;
  }




  return 1;
 }

 return 0;
}
