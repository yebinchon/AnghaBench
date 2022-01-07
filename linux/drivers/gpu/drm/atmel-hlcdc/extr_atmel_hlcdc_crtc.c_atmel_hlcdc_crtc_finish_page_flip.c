
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int event_lock; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct atmel_hlcdc_crtc {int * event; TYPE_1__ base; } ;


 int drm_crtc_send_vblank_event (TYPE_1__*,int *) ;
 int drm_crtc_vblank_put (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void atmel_hlcdc_crtc_finish_page_flip(struct atmel_hlcdc_crtc *crtc)
{
 struct drm_device *dev = crtc->base.dev;
 unsigned long flags;

 spin_lock_irqsave(&dev->event_lock, flags);
 if (crtc->event) {
  drm_crtc_send_vblank_event(&crtc->base, crtc->event);
  drm_crtc_vblank_put(&crtc->base);
  crtc->event = ((void*)0);
 }
 spin_unlock_irqrestore(&dev->event_lock, flags);
}
