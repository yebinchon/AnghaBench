
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vkms_output {int lock; int composer_state; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* state; TYPE_1__* dev; } ;
struct TYPE_4__ {int * event; } ;
struct TYPE_3__ {int event_lock; } ;


 int drm_crtc_arm_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 struct vkms_output* drm_crtc_to_vkms_output (struct drm_crtc*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int to_vkms_crtc_state (TYPE_2__*) ;

__attribute__((used)) static void vkms_crtc_atomic_flush(struct drm_crtc *crtc,
       struct drm_crtc_state *old_crtc_state)
{
 struct vkms_output *vkms_output = drm_crtc_to_vkms_output(crtc);

 if (crtc->state->event) {
  spin_lock(&crtc->dev->event_lock);

  if (drm_crtc_vblank_get(crtc) != 0)
   drm_crtc_send_vblank_event(crtc, crtc->state->event);
  else
   drm_crtc_arm_vblank_event(crtc, crtc->state->event);

  spin_unlock(&crtc->dev->event_lock);

  crtc->state->event = ((void*)0);
 }

 vkms_output->composer_state = to_vkms_crtc_state(crtc->state);

 spin_unlock_irq(&vkms_output->lock);
}
