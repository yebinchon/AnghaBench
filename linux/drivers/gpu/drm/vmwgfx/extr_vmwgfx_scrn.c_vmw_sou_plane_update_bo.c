
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmw_private {int dummy; } ;
struct vmw_framebuffer {int dummy; } ;
struct vmw_fence_obj {int dummy; } ;
struct TYPE_4__ {int cpu_blit; int intr; int post_clip; int clip; int post_prepare; int calc_fifo_size; int * mutex; struct vmw_fence_obj** out_fence; struct vmw_framebuffer* vfb; int du; struct vmw_private* dev_priv; struct drm_plane_state* old_state; struct drm_plane* plane; } ;
struct vmw_du_update_plane_buffer {TYPE_2__ base; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_1__* state; } ;
struct TYPE_3__ {int crtc; } ;


 int memset (struct vmw_du_update_plane_buffer*,int ,int) ;
 int vmw_crtc_to_du (int ) ;
 int vmw_du_helper_plane_update (TYPE_2__*) ;
 int vmw_sou_bo_define_gmrfb ;
 int vmw_sou_bo_fifo_size ;
 int vmw_sou_bo_populate_clip ;
 int vmw_stud_bo_post_clip ;

__attribute__((used)) static int vmw_sou_plane_update_bo(struct vmw_private *dev_priv,
       struct drm_plane *plane,
       struct drm_plane_state *old_state,
       struct vmw_framebuffer *vfb,
       struct vmw_fence_obj **out_fence)
{
 struct vmw_du_update_plane_buffer bo_update;

 memset(&bo_update, 0, sizeof(struct vmw_du_update_plane_buffer));
 bo_update.base.plane = plane;
 bo_update.base.old_state = old_state;
 bo_update.base.dev_priv = dev_priv;
 bo_update.base.du = vmw_crtc_to_du(plane->state->crtc);
 bo_update.base.vfb = vfb;
 bo_update.base.out_fence = out_fence;
 bo_update.base.mutex = ((void*)0);
 bo_update.base.cpu_blit = 0;
 bo_update.base.intr = 1;

 bo_update.base.calc_fifo_size = vmw_sou_bo_fifo_size;
 bo_update.base.post_prepare = vmw_sou_bo_define_gmrfb;
 bo_update.base.clip = vmw_sou_bo_populate_clip;
 bo_update.base.post_clip = vmw_stud_bo_post_clip;

 return vmw_du_helper_plane_update(&bo_update.base);
}
