
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_crtc {int * event; int crtc; } ;
struct drm_device {int event_lock; } ;


 int drm_crtc_send_vblank_event (int *,int *) ;
 int drm_crtc_vblank_put (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sun4i_tcon_finish_page_flip(struct drm_device *dev,
     struct sun4i_crtc *scrtc)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->event_lock, flags);
 if (scrtc->event) {
  drm_crtc_send_vblank_event(&scrtc->crtc, scrtc->event);
  drm_crtc_vblank_put(&scrtc->crtc);
  scrtc->event = ((void*)0);
 }
 spin_unlock_irqrestore(&dev->event_lock, flags);
}
