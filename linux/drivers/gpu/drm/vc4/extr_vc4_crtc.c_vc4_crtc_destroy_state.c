
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc4_dev {TYPE_1__* hvs; } ;
struct TYPE_4__ {scalar_t__ allocated; } ;
struct vc4_crtc_state {TYPE_2__ mm; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dev; } ;
struct TYPE_3__ {int mm_lock; } ;


 int drm_atomic_helper_crtc_destroy_state (struct drm_crtc*,struct drm_crtc_state*) ;
 int drm_mm_remove_node (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vc4_crtc_state* to_vc4_crtc_state (struct drm_crtc_state*) ;
 struct vc4_dev* to_vc4_dev (int ) ;

__attribute__((used)) static void vc4_crtc_destroy_state(struct drm_crtc *crtc,
       struct drm_crtc_state *state)
{
 struct vc4_dev *vc4 = to_vc4_dev(crtc->dev);
 struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(state);

 if (vc4_state->mm.allocated) {
  unsigned long flags;

  spin_lock_irqsave(&vc4->hvs->mm_lock, flags);
  drm_mm_remove_node(&vc4_state->mm);
  spin_unlock_irqrestore(&vc4->hvs->mm_lock, flags);

 }

 drm_atomic_helper_crtc_destroy_state(crtc, state);
}
