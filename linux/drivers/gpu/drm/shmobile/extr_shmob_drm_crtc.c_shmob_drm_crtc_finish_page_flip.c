
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_device* dev; } ;
struct shmob_drm_crtc {TYPE_1__ crtc; struct drm_pending_vblank_event* event; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_device {int event_lock; } ;


 int drm_crtc_send_vblank_event (TYPE_1__*,struct drm_pending_vblank_event*) ;
 int drm_crtc_vblank_put (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void shmob_drm_crtc_finish_page_flip(struct shmob_drm_crtc *scrtc)
{
 struct drm_pending_vblank_event *event;
 struct drm_device *dev = scrtc->crtc.dev;
 unsigned long flags;

 spin_lock_irqsave(&dev->event_lock, flags);
 event = scrtc->event;
 scrtc->event = ((void*)0);
 if (event) {
  drm_crtc_send_vblank_event(&scrtc->crtc, event);
  drm_crtc_vblank_put(&scrtc->crtc);
 }
 spin_unlock_irqrestore(&dev->event_lock, flags);
}
