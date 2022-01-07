
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_win {int dummy; } ;
struct vop {int reg_lock; } ;
struct drm_plane_state {int crtc; } ;
struct drm_plane {int dummy; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vop* to_vop (int ) ;
 struct vop_win* to_vop_win (struct drm_plane*) ;
 int vop_win_disable (struct vop*,struct vop_win*) ;

__attribute__((used)) static void vop_plane_atomic_disable(struct drm_plane *plane,
         struct drm_plane_state *old_state)
{
 struct vop_win *vop_win = to_vop_win(plane);
 struct vop *vop = to_vop(old_state->crtc);

 if (!old_state->crtc)
  return;

 spin_lock(&vop->reg_lock);

 vop_win_disable(vop, vop_win);

 spin_unlock(&vop->reg_lock);
}
