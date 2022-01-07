
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct exynos_drm_crtc {TYPE_3__* ops; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* state; TYPE_1__* dev; } ;
struct TYPE_6__ {int (* disable ) (struct exynos_drm_crtc*) ;} ;
struct TYPE_5__ {int * event; int active; } ;
struct TYPE_4__ {int event_lock; } ;


 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct exynos_drm_crtc*) ;
 struct exynos_drm_crtc* to_exynos_crtc (struct drm_crtc*) ;

__attribute__((used)) static void exynos_drm_crtc_atomic_disable(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 struct exynos_drm_crtc *exynos_crtc = to_exynos_crtc(crtc);

 drm_crtc_vblank_off(crtc);

 if (exynos_crtc->ops->disable)
  exynos_crtc->ops->disable(exynos_crtc);

 if (crtc->state->event && !crtc->state->active) {
  spin_lock_irq(&crtc->dev->event_lock);
  drm_crtc_send_vblank_event(crtc, crtc->state->event);
  spin_unlock_irq(&crtc->dev->event_lock);

  crtc->state->event = ((void*)0);
 }
}
