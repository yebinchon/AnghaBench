
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct drm_device* dev; } ;
struct rcar_du_crtc {int dev; int * event; TYPE_2__ crtc; } ;
struct drm_device {int event_lock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_3__ {int * event; } ;


 int RCAR_DU_FEATURE_VSP1_SOURCE ;
 int WARN_ON (int) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int rcar_du_crtc_update_planes (struct rcar_du_crtc*) ;
 scalar_t__ rcar_du_has (int ,int ) ;
 int rcar_du_vsp_atomic_flush (struct rcar_du_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct rcar_du_crtc* to_rcar_crtc (struct drm_crtc*) ;

__attribute__((used)) static void rcar_du_crtc_atomic_flush(struct drm_crtc *crtc,
          struct drm_crtc_state *old_crtc_state)
{
 struct rcar_du_crtc *rcrtc = to_rcar_crtc(crtc);
 struct drm_device *dev = rcrtc->crtc.dev;
 unsigned long flags;

 rcar_du_crtc_update_planes(rcrtc);

 if (crtc->state->event) {
  WARN_ON(drm_crtc_vblank_get(crtc) != 0);

  spin_lock_irqsave(&dev->event_lock, flags);
  rcrtc->event = crtc->state->event;
  crtc->state->event = ((void*)0);
  spin_unlock_irqrestore(&dev->event_lock, flags);
 }

 if (rcar_du_has(rcrtc->dev, RCAR_DU_FEATURE_VSP1_SOURCE))
  rcar_du_vsp_atomic_flush(rcrtc);
}
