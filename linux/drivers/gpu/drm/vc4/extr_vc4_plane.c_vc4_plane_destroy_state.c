
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ allocated; } ;
struct vc4_plane_state {int base; struct drm_plane_state* dlist; TYPE_2__ lbm; } ;
struct vc4_dev {TYPE_1__* hvs; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dev; } ;
struct TYPE_3__ {int mm_lock; } ;


 int __drm_atomic_helper_plane_destroy_state (int *) ;
 int drm_mm_remove_node (TYPE_2__*) ;
 int kfree (struct drm_plane_state*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vc4_dev* to_vc4_dev (int ) ;
 struct vc4_plane_state* to_vc4_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static void vc4_plane_destroy_state(struct drm_plane *plane,
        struct drm_plane_state *state)
{
 struct vc4_dev *vc4 = to_vc4_dev(plane->dev);
 struct vc4_plane_state *vc4_state = to_vc4_plane_state(state);

 if (vc4_state->lbm.allocated) {
  unsigned long irqflags;

  spin_lock_irqsave(&vc4->hvs->mm_lock, irqflags);
  drm_mm_remove_node(&vc4_state->lbm);
  spin_unlock_irqrestore(&vc4->hvs->mm_lock, irqflags);
 }

 kfree(vc4_state->dlist);
 __drm_atomic_helper_plane_destroy_state(&vc4_state->base);
 kfree(state);
}
