
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_drm_private {int dispc; TYPE_1__* dispc_ops; } ;
struct omap_crtc_state {scalar_t__ manually_updated; } ;
struct omap_crtc {int name; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* dev; int state; } ;
struct TYPE_4__ {int event_lock; struct omap_drm_private* dev_private; } ;
struct TYPE_3__ {int (* runtime_get ) (int ) ;} ;


 int DBG (char*,int ) ;
 int WARN_ON (int) ;
 int drm_crtc_vblank_get (struct drm_crtc*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int omap_crtc_arm_event (struct drm_crtc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int ) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;
 struct omap_crtc_state* to_omap_crtc_state (int ) ;

__attribute__((used)) static void omap_crtc_atomic_enable(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 struct omap_drm_private *priv = crtc->dev->dev_private;
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);
 struct omap_crtc_state *omap_state = to_omap_crtc_state(crtc->state);
 int ret;

 DBG("%s", omap_crtc->name);

 priv->dispc_ops->runtime_get(priv->dispc);


 if (omap_state->manually_updated)
  return;

 spin_lock_irq(&crtc->dev->event_lock);
 drm_crtc_vblank_on(crtc);
 ret = drm_crtc_vblank_get(crtc);
 WARN_ON(ret != 0);

 omap_crtc_arm_event(crtc);
 spin_unlock_irq(&crtc->dev->event_lock);
}
