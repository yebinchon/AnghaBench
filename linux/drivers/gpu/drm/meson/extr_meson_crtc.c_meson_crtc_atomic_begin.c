
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct meson_crtc {int * event; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; TYPE_2__* dev; } ;
struct TYPE_4__ {int event_lock; } ;
struct TYPE_3__ {int * event; } ;


 int WARN_ON (int) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct meson_crtc* to_meson_crtc (struct drm_crtc*) ;

__attribute__((used)) static void meson_crtc_atomic_begin(struct drm_crtc *crtc,
        struct drm_crtc_state *state)
{
 struct meson_crtc *meson_crtc = to_meson_crtc(crtc);
 unsigned long flags;

 if (crtc->state->event) {
  WARN_ON(drm_crtc_vblank_get(crtc) != 0);

  spin_lock_irqsave(&crtc->dev->event_lock, flags);
  meson_crtc->event = crtc->state->event;
  spin_unlock_irqrestore(&crtc->dev->event_lock, flags);
  crtc->state->event = ((void*)0);
 }
}
