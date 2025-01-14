
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_drm_private {int dispc; TYPE_2__* dispc_ops; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct omap_crtc {int pending; int name; int pending_wait; int * event; int channel; TYPE_1__ base; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;
struct drm_crtc {TYPE_3__* dev; } ;
struct TYPE_6__ {int event_lock; } ;
struct TYPE_5__ {scalar_t__ (* mgr_go_busy ) (int ,int ) ;} ;


 int DBG (char*,int ) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_put (struct drm_crtc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (int ,int ) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;
 int wake_up (int *) ;

void omap_crtc_vblank_irq(struct drm_crtc *crtc)
{
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);
 struct drm_device *dev = omap_crtc->base.dev;
 struct omap_drm_private *priv = dev->dev_private;
 bool pending;

 spin_lock(&crtc->dev->event_lock);




 if (priv->dispc_ops->mgr_go_busy(priv->dispc, omap_crtc->channel)) {
  spin_unlock(&crtc->dev->event_lock);
  return;
 }


 if (omap_crtc->event) {
  drm_crtc_send_vblank_event(crtc, omap_crtc->event);
  omap_crtc->event = ((void*)0);
 }

 pending = omap_crtc->pending;
 omap_crtc->pending = 0;
 spin_unlock(&crtc->dev->event_lock);

 if (pending)
  drm_crtc_vblank_put(crtc);


 wake_up(&omap_crtc->pending_wait);

 DBG("%s: apply done", omap_crtc->name);
}
