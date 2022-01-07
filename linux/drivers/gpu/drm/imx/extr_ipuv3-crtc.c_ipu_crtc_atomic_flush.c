
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipu_crtc {int * event; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; TYPE_2__* state; } ;
struct TYPE_4__ {int * event; } ;
struct TYPE_3__ {int event_lock; } ;


 int WARN_ON (int ) ;
 int drm_crtc_vblank_get (struct drm_crtc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct ipu_crtc* to_ipu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void ipu_crtc_atomic_flush(struct drm_crtc *crtc,
      struct drm_crtc_state *old_crtc_state)
{
 spin_lock_irq(&crtc->dev->event_lock);
 if (crtc->state->event) {
  struct ipu_crtc *ipu_crtc = to_ipu_crtc(crtc);

  WARN_ON(drm_crtc_vblank_get(crtc));
  ipu_crtc->event = crtc->state->event;
  crtc->state->event = ((void*)0);
 }
 spin_unlock_irq(&crtc->dev->event_lock);
}
