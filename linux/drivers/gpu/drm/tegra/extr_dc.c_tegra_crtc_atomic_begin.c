
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* state; TYPE_1__* dev; } ;
struct TYPE_4__ {int * event; } ;
struct TYPE_3__ {int event_lock; } ;


 int drm_crtc_arm_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void tegra_crtc_atomic_begin(struct drm_crtc *crtc,
        struct drm_crtc_state *old_crtc_state)
{
 unsigned long flags;

 if (crtc->state->event) {
  spin_lock_irqsave(&crtc->dev->event_lock, flags);

  if (drm_crtc_vblank_get(crtc) != 0)
   drm_crtc_send_vblank_event(crtc, crtc->state->event);
  else
   drm_crtc_arm_vblank_event(crtc, crtc->state->event);

  spin_unlock_irqrestore(&crtc->dev->event_lock, flags);

  crtc->state->event = ((void*)0);
 }
}
