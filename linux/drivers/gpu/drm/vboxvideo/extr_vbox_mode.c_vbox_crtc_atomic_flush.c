
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_pending_vblank_event {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; TYPE_2__* state; } ;
struct TYPE_4__ {struct drm_pending_vblank_event* event; } ;
struct TYPE_3__ {int event_lock; } ;


 int drm_crtc_send_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void vbox_crtc_atomic_flush(struct drm_crtc *crtc,
       struct drm_crtc_state *old_crtc_state)
{
 struct drm_pending_vblank_event *event;
 unsigned long flags;

 if (crtc->state && crtc->state->event) {
  event = crtc->state->event;
  crtc->state->event = ((void*)0);

  spin_lock_irqsave(&crtc->dev->event_lock, flags);
  drm_crtc_send_vblank_event(crtc, event);
  spin_unlock_irqrestore(&crtc->dev->event_lock, flags);
 }
}
