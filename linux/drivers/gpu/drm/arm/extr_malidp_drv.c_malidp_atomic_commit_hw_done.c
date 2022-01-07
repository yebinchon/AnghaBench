
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* state; } ;
struct malidp_drm {int * event; TYPE_2__ crtc; } ;
struct drm_device {int event_lock; struct malidp_drm* dev_private; } ;
struct drm_atomic_state {struct drm_device* dev; } ;
struct TYPE_4__ {scalar_t__ active; int * event; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int drm_atomic_helper_commit_hw_done (struct drm_atomic_state*) ;
 int drm_crtc_send_vblank_event (TYPE_2__*,int *) ;
 int drm_crtc_vblank_get (TYPE_2__*) ;
 scalar_t__ malidp_set_and_wait_config_valid (struct drm_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void malidp_atomic_commit_hw_done(struct drm_atomic_state *state)
{
 struct drm_device *drm = state->dev;
 struct malidp_drm *malidp = drm->dev_private;
 int loop = 5;

 malidp->event = malidp->crtc.state->event;
 malidp->crtc.state->event = ((void*)0);

 if (malidp->crtc.state->active) {





  if (malidp->event)
   drm_crtc_vblank_get(&malidp->crtc);


  if (malidp_set_and_wait_config_valid(drm) < 0) {




   while (loop--) {
    if (!malidp_set_and_wait_config_valid(drm))
     break;
   }
   DRM_DEBUG_DRIVER("timed out waiting for updated configuration\n");
  }

 } else if (malidp->event) {

  spin_lock_irq(&drm->event_lock);
  drm_crtc_send_vblank_event(&malidp->crtc, malidp->event);
  malidp->event = ((void*)0);
  spin_unlock_irq(&drm->event_lock);
 }
 drm_atomic_helper_commit_hw_done(state);
}
