
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_device* dev; } ;
struct rcar_du_crtc {int * event; TYPE_1__ crtc; } ;
struct drm_device {int event_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool rcar_du_crtc_page_flip_pending(struct rcar_du_crtc *rcrtc)
{
 struct drm_device *dev = rcrtc->crtc.dev;
 unsigned long flags;
 bool pending;

 spin_lock_irqsave(&dev->event_lock, flags);
 pending = rcrtc->event != ((void*)0);
 spin_unlock_irqrestore(&dev->event_lock, flags);

 return pending;
}
