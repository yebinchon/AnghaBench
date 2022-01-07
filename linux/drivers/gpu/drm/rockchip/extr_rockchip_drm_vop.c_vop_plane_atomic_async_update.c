
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop {int pending; int fb_unref_work; int reg_lock; scalar_t__ is_enabled; } ;
struct drm_plane_state {int fb; int src_w; int src_h; int src_y; int src_x; int crtc_w; int crtc_h; int crtc_y; int crtc_x; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_2__ {int crtc; struct drm_framebuffer* fb; int src_w; int src_h; int src_y; int src_x; int crtc_w; int crtc_h; int crtc_y; int crtc_x; } ;


 int VOP_PENDING_FB_UNREF ;
 int WARN_ON (int) ;
 scalar_t__ drm_crtc_vblank_get (int ) ;
 int drm_flip_work_queue (int *,struct drm_framebuffer*) ;
 int drm_framebuffer_get (struct drm_framebuffer*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int swap (struct drm_framebuffer*,int ) ;
 struct vop* to_vop (int ) ;
 int vop_cfg_done (struct vop*) ;
 int vop_plane_atomic_update (struct drm_plane*,TYPE_1__*) ;

__attribute__((used)) static void vop_plane_atomic_async_update(struct drm_plane *plane,
       struct drm_plane_state *new_state)
{
 struct vop *vop = to_vop(plane->state->crtc);
 struct drm_framebuffer *old_fb = plane->state->fb;

 plane->state->crtc_x = new_state->crtc_x;
 plane->state->crtc_y = new_state->crtc_y;
 plane->state->crtc_h = new_state->crtc_h;
 plane->state->crtc_w = new_state->crtc_w;
 plane->state->src_x = new_state->src_x;
 plane->state->src_y = new_state->src_y;
 plane->state->src_h = new_state->src_h;
 plane->state->src_w = new_state->src_w;
 swap(plane->state->fb, new_state->fb);

 if (vop->is_enabled) {
  vop_plane_atomic_update(plane, plane->state);
  spin_lock(&vop->reg_lock);
  vop_cfg_done(vop);
  spin_unlock(&vop->reg_lock);
  if (old_fb && plane->state->fb != old_fb) {
   drm_framebuffer_get(old_fb);
   WARN_ON(drm_crtc_vblank_get(plane->state->crtc) != 0);
   drm_flip_work_queue(&vop->fb_unref_work, old_fb);
   set_bit(VOP_PENDING_FB_UNREF, &vop->pending);
  }
 }
}
