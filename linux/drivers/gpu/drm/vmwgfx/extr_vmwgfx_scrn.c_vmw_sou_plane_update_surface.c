
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmw_private {int cmdbuf_mutex; } ;
struct vmw_framebuffer {int dummy; } ;
struct vmw_fence_obj {int dummy; } ;
struct TYPE_4__ {int cpu_blit; int intr; int post_clip; int clip; int pre_clip; int post_prepare; int calc_fifo_size; int * mutex; struct vmw_fence_obj** out_fence; struct vmw_framebuffer* vfb; int du; struct vmw_private* dev_priv; struct drm_plane_state* old_state; struct drm_plane* plane; } ;
struct vmw_du_update_plane_surface {TYPE_2__ base; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_1__* state; } ;
struct TYPE_3__ {int crtc; } ;


 int memset (struct vmw_du_update_plane_surface*,int ,int) ;
 int vmw_crtc_to_du (int ) ;
 int vmw_du_helper_plane_update (TYPE_2__*) ;
 int vmw_sou_surface_clip_rect ;
 int vmw_sou_surface_fifo_size ;
 int vmw_sou_surface_post_clip ;
 int vmw_sou_surface_post_prepare ;
 int vmw_sou_surface_pre_clip ;

__attribute__((used)) static int vmw_sou_plane_update_surface(struct vmw_private *dev_priv,
     struct drm_plane *plane,
     struct drm_plane_state *old_state,
     struct vmw_framebuffer *vfb,
     struct vmw_fence_obj **out_fence)
{
 struct vmw_du_update_plane_surface srf_update;

 memset(&srf_update, 0, sizeof(struct vmw_du_update_plane_surface));
 srf_update.base.plane = plane;
 srf_update.base.old_state = old_state;
 srf_update.base.dev_priv = dev_priv;
 srf_update.base.du = vmw_crtc_to_du(plane->state->crtc);
 srf_update.base.vfb = vfb;
 srf_update.base.out_fence = out_fence;
 srf_update.base.mutex = &dev_priv->cmdbuf_mutex;
 srf_update.base.cpu_blit = 0;
 srf_update.base.intr = 1;

 srf_update.base.calc_fifo_size = vmw_sou_surface_fifo_size;
 srf_update.base.post_prepare = vmw_sou_surface_post_prepare;
 srf_update.base.pre_clip = vmw_sou_surface_pre_clip;
 srf_update.base.clip = vmw_sou_surface_clip_rect;
 srf_update.base.post_clip = vmw_sou_surface_post_clip;

 return vmw_du_helper_plane_update(&srf_update.base);
}
