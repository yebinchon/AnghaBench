
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_drm_private {int dispc; TYPE_2__* dispc_ops; } ;
struct omap_crtc {int update_work; int name; } ;
struct drm_device {int dev; int event_lock; struct omap_drm_private* dev_private; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {struct drm_device* dev; TYPE_1__* state; } ;
struct TYPE_4__ {int (* runtime_put ) (int ) ;} ;
struct TYPE_3__ {int * event; } ;


 int DBG (char*,int ) ;
 int cancel_delayed_work (int *) ;
 int dev_warn (int ,char*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int omap_crtc_wait_pending (struct drm_crtc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int ) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;

__attribute__((used)) static void omap_crtc_atomic_disable(struct drm_crtc *crtc,
         struct drm_crtc_state *old_state)
{
 struct omap_drm_private *priv = crtc->dev->dev_private;
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);
 struct drm_device *dev = crtc->dev;

 DBG("%s", omap_crtc->name);

 spin_lock_irq(&crtc->dev->event_lock);
 if (crtc->state->event) {
  drm_crtc_send_vblank_event(crtc, crtc->state->event);
  crtc->state->event = ((void*)0);
 }
 spin_unlock_irq(&crtc->dev->event_lock);

 cancel_delayed_work(&omap_crtc->update_work);

 if (!omap_crtc_wait_pending(crtc))
  dev_warn(dev->dev, "manual display update did not finish!");

 drm_crtc_vblank_off(crtc);

 priv->dispc_ops->runtime_put(priv->dispc);
}
