
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_device* dev; } ;
struct rcar_du_crtc {TYPE_1__ crtc; int flip_wait; struct drm_pending_vblank_event* event; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_device {int event_lock; } ;


 int drm_crtc_send_vblank_event (TYPE_1__*,struct drm_pending_vblank_event*) ;
 int drm_crtc_vblank_put (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void rcar_du_crtc_finish_page_flip(struct rcar_du_crtc *rcrtc)
{
 struct drm_pending_vblank_event *event;
 struct drm_device *dev = rcrtc->crtc.dev;
 unsigned long flags;

 spin_lock_irqsave(&dev->event_lock, flags);
 event = rcrtc->event;
 rcrtc->event = ((void*)0);
 spin_unlock_irqrestore(&dev->event_lock, flags);

 if (event == ((void*)0))
  return;

 spin_lock_irqsave(&dev->event_lock, flags);
 drm_crtc_send_vblank_event(&rcrtc->crtc, event);
 wake_up(&rcrtc->flip_wait);
 spin_unlock_irqrestore(&dev->event_lock, flags);

 drm_crtc_vblank_put(&rcrtc->crtc);
}
