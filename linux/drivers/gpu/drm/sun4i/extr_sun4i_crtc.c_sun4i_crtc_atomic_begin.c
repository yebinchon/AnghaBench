
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sunxi_engine {TYPE_2__* ops; } ;
struct sun4i_crtc {int * event; struct sunxi_engine* engine; } ;
struct drm_device {int event_lock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; struct drm_device* dev; } ;
struct TYPE_4__ {int (* atomic_begin ) (struct sunxi_engine*,struct drm_crtc_state*) ;} ;
struct TYPE_3__ {int * event; } ;


 int WARN_ON (int) ;
 struct sun4i_crtc* drm_crtc_to_sun4i_crtc (struct drm_crtc*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sunxi_engine*,struct drm_crtc_state*) ;

__attribute__((used)) static void sun4i_crtc_atomic_begin(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 struct sun4i_crtc *scrtc = drm_crtc_to_sun4i_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct sunxi_engine *engine = scrtc->engine;
 unsigned long flags;

 if (crtc->state->event) {
  WARN_ON(drm_crtc_vblank_get(crtc) != 0);

  spin_lock_irqsave(&dev->event_lock, flags);
  scrtc->event = crtc->state->event;
  spin_unlock_irqrestore(&dev->event_lock, flags);
  crtc->state->event = ((void*)0);
 }

 if (engine->ops->atomic_begin)
  engine->ops->atomic_begin(engine, old_state);
}
