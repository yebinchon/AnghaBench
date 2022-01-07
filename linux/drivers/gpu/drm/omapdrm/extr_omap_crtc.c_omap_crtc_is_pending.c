
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_crtc {int pending; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {int event_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;

__attribute__((used)) static bool omap_crtc_is_pending(struct drm_crtc *crtc)
{
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);
 unsigned long flags;
 bool pending;

 spin_lock_irqsave(&crtc->dev->event_lock, flags);
 pending = omap_crtc->pending;
 spin_unlock_irqrestore(&crtc->dev->event_lock, flags);

 return pending;
}
