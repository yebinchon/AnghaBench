
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {TYPE_1__* dev; } ;
struct mtk_drm_crtc {int * event; struct drm_crtc base; } ;
struct TYPE_2__ {int event_lock; } ;


 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_put (struct drm_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mtk_drm_crtc_finish_page_flip(struct mtk_drm_crtc *mtk_crtc)
{
 struct drm_crtc *crtc = &mtk_crtc->base;
 unsigned long flags;

 spin_lock_irqsave(&crtc->dev->event_lock, flags);
 drm_crtc_send_vblank_event(crtc, mtk_crtc->event);
 drm_crtc_vblank_put(crtc);
 mtk_crtc->event = ((void*)0);
 spin_unlock_irqrestore(&crtc->dev->event_lock, flags);
}
