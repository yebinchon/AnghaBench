
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_crtc {TYPE_1__* dev; TYPE_2__* state; } ;
struct exynos_drm_crtc {struct drm_crtc base; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct TYPE_4__ {struct drm_pending_vblank_event* event; } ;
struct TYPE_3__ {int event_lock; } ;


 int WARN_ON (int) ;
 int drm_crtc_arm_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void exynos_crtc_handle_event(struct exynos_drm_crtc *exynos_crtc)
{
 struct drm_crtc *crtc = &exynos_crtc->base;
 struct drm_pending_vblank_event *event = crtc->state->event;
 unsigned long flags;

 if (!event)
  return;
 crtc->state->event = ((void*)0);

 WARN_ON(drm_crtc_vblank_get(crtc) != 0);

 spin_lock_irqsave(&crtc->dev->event_lock, flags);
 drm_crtc_arm_vblank_event(crtc, event);
 spin_unlock_irqrestore(&crtc->dev->event_lock, flags);
}
