
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vmw_private {int dummy; } ;
struct vmw_framebuffer {scalar_t__ bo; } ;
struct vmw_fence_obj {int dummy; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_1__* state; } ;
struct TYPE_7__ {int tv_usec; int tv_sec; } ;
struct TYPE_8__ {TYPE_2__ vbl; } ;
struct TYPE_10__ {struct drm_file* file_priv; } ;
struct drm_pending_vblank_event {TYPE_3__ event; TYPE_5__ base; } ;
struct drm_file {int dummy; } ;
struct drm_crtc {TYPE_4__* state; int dev; } ;
struct TYPE_9__ {struct drm_pending_vblank_event* event; } ;
struct TYPE_6__ {scalar_t__ fb; struct drm_crtc* crtc; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ unlikely (int) ;
 int vmw_event_fence_action_queue (struct drm_file*,struct vmw_fence_obj*,TYPE_5__*,int *,int *,int) ;
 int vmw_fence_obj_unreference (struct vmw_fence_obj**) ;
 struct vmw_framebuffer* vmw_framebuffer_to_vfb (scalar_t__) ;
 struct vmw_private* vmw_priv (int ) ;
 int vmw_sou_plane_update_bo (struct vmw_private*,struct drm_plane*,struct drm_plane_state*,struct vmw_framebuffer*,struct vmw_fence_obj**) ;
 int vmw_sou_plane_update_surface (struct vmw_private*,struct drm_plane*,struct drm_plane_state*,struct vmw_framebuffer*,struct vmw_fence_obj**) ;

__attribute__((used)) static void
vmw_sou_primary_plane_atomic_update(struct drm_plane *plane,
        struct drm_plane_state *old_state)
{
 struct drm_crtc *crtc = plane->state->crtc;
 struct drm_pending_vblank_event *event = ((void*)0);
 struct vmw_fence_obj *fence = ((void*)0);
 int ret;


 if (crtc && plane->state->fb) {
  struct vmw_private *dev_priv = vmw_priv(crtc->dev);
  struct vmw_framebuffer *vfb =
   vmw_framebuffer_to_vfb(plane->state->fb);

  if (vfb->bo)
   ret = vmw_sou_plane_update_bo(dev_priv, plane,
            old_state, vfb, &fence);
  else
   ret = vmw_sou_plane_update_surface(dev_priv, plane,
          old_state, vfb,
          &fence);
  if (ret != 0)
   DRM_ERROR("Failed to update screen.\n");
 } else {

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

  if (unlikely(ret != 0))
   DRM_ERROR("Failed to queue event on fence.\n");
  else
   crtc->state->event = ((void*)0);
 }

 if (fence)
  vmw_fence_obj_unreference(&fence);
}
