
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct omap_crtc {int pending; int pending_wait; int * event; int framedone_handler_data; int (* framedone_handler ) (int ) ;} ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {int event_lock; } ;


 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;
 int wake_up (int *) ;

void omap_crtc_framedone_irq(struct drm_crtc *crtc, uint32_t irqstatus)
{
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);

 if (!omap_crtc->framedone_handler)
  return;

 omap_crtc->framedone_handler(omap_crtc->framedone_handler_data);

 spin_lock(&crtc->dev->event_lock);

 if (omap_crtc->event) {
  drm_crtc_send_vblank_event(crtc, omap_crtc->event);
  omap_crtc->event = ((void*)0);
 }
 omap_crtc->pending = 0;
 spin_unlock(&crtc->dev->event_lock);


 wake_up(&omap_crtc->pending_wait);
}
