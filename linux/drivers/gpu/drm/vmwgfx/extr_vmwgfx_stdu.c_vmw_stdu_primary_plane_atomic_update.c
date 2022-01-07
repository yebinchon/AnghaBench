
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vmw_screen_target_display_unit {int defined; TYPE_1__* display_srf; int cpp; int content_fb_type; } ;
struct vmw_private {int dummy; } ;
struct vmw_plane_state {int cpp; int content_fb_type; TYPE_1__* surf; } ;
struct vmw_framebuffer {scalar_t__ bo; } ;
struct vmw_fence_obj {int dummy; } ;
struct drm_plane_state {struct drm_crtc* crtc; } ;
struct drm_plane {TYPE_5__* state; } ;
struct TYPE_8__ {int tv_usec; int tv_sec; } ;
struct TYPE_9__ {TYPE_2__ vbl; } ;
struct TYPE_12__ {struct drm_file* file_priv; } ;
struct drm_pending_vblank_event {TYPE_3__ event; TYPE_6__ base; } ;
struct drm_file {int dummy; } ;
struct drm_crtc {TYPE_4__* state; int dev; } ;
struct TYPE_11__ {scalar_t__ fb; struct drm_crtc* crtc; } ;
struct TYPE_10__ {struct drm_pending_vblank_event* event; } ;
struct TYPE_7__ {int res; } ;


 int DRM_ERROR (char*) ;
 struct vmw_screen_target_display_unit* vmw_crtc_to_stdu (struct drm_crtc*) ;
 int vmw_event_fence_action_queue (struct drm_file*,struct vmw_fence_obj*,TYPE_6__*,int *,int *,int) ;
 int vmw_fence_obj_unreference (struct vmw_fence_obj**) ;
 struct vmw_framebuffer* vmw_framebuffer_to_vfb (scalar_t__) ;
 struct vmw_plane_state* vmw_plane_state_to_vps (TYPE_5__*) ;
 struct vmw_private* vmw_priv (int ) ;
 int vmw_stdu_bind_st (struct vmw_private*,struct vmw_screen_target_display_unit*,int *) ;
 int vmw_stdu_plane_update_bo (struct vmw_private*,struct drm_plane*,struct drm_plane_state*,struct vmw_framebuffer*,struct vmw_fence_obj**) ;
 int vmw_stdu_plane_update_surface (struct vmw_private*,struct drm_plane*,struct drm_plane_state*,struct vmw_framebuffer*,struct vmw_fence_obj**) ;
 int vmw_stdu_update_st (struct vmw_private*,struct vmw_screen_target_display_unit*) ;

__attribute__((used)) static void
vmw_stdu_primary_plane_atomic_update(struct drm_plane *plane,
         struct drm_plane_state *old_state)
{
 struct vmw_plane_state *vps = vmw_plane_state_to_vps(plane->state);
 struct drm_crtc *crtc = plane->state->crtc;
 struct vmw_screen_target_display_unit *stdu;
 struct drm_pending_vblank_event *event;
 struct vmw_fence_obj *fence = ((void*)0);
 struct vmw_private *dev_priv;
 int ret;


 if (crtc && plane->state->fb) {
  struct vmw_framebuffer *vfb =
   vmw_framebuffer_to_vfb(plane->state->fb);
  stdu = vmw_crtc_to_stdu(crtc);
  dev_priv = vmw_priv(crtc->dev);

  stdu->display_srf = vps->surf;
  stdu->content_fb_type = vps->content_fb_type;
  stdu->cpp = vps->cpp;

  ret = vmw_stdu_bind_st(dev_priv, stdu, &stdu->display_srf->res);
  if (ret)
   DRM_ERROR("Failed to bind surface to STDU.\n");

  if (vfb->bo)
   ret = vmw_stdu_plane_update_bo(dev_priv, plane,
             old_state, vfb, &fence);
  else
   ret = vmw_stdu_plane_update_surface(dev_priv, plane,
           old_state, vfb,
           &fence);
  if (ret)
   DRM_ERROR("Failed to update STDU.\n");
 } else {
  crtc = old_state->crtc;
  stdu = vmw_crtc_to_stdu(crtc);
  dev_priv = vmw_priv(crtc->dev);


  if (!stdu->defined)
   return;

  ret = vmw_stdu_bind_st(dev_priv, stdu, ((void*)0));
  if (ret)
   DRM_ERROR("Failed to blank STDU\n");

  ret = vmw_stdu_update_st(dev_priv, stdu);
  if (ret)
   DRM_ERROR("Failed to update STDU.\n");

  return;
 }


 event = crtc->state->event;
 if (event && fence) {
  struct drm_file *file_priv = event->base.file_priv;

  ret = vmw_event_fence_action_queue(file_priv,
         fence,
         &event->base,
         &event->event.vbl.tv_sec,
         &event->event.vbl.tv_usec,
         1);
  if (ret)
   DRM_ERROR("Failed to queue event on fence.\n");
  else
   crtc->state->event = ((void*)0);
 }

 if (fence)
  vmw_fence_obj_unreference(&fence);
}
