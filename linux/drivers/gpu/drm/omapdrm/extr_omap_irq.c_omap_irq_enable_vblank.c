
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_drm_private {int wait_lock; int dispc; TYPE_1__* dispc_ops; int irq_mask; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int (* mgr_get_vsync_irq ) (int ,int) ;} ;


 int DBG (char*,struct drm_device*,int) ;
 int omap_crtc_channel (struct drm_crtc*) ;
 int omap_irq_update (struct drm_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int) ;

int omap_irq_enable_vblank(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct omap_drm_private *priv = dev->dev_private;
 unsigned long flags;
 enum omap_channel channel = omap_crtc_channel(crtc);

 DBG("dev=%p, crtc=%u", dev, channel);

 spin_lock_irqsave(&priv->wait_lock, flags);
 priv->irq_mask |= priv->dispc_ops->mgr_get_vsync_irq(priv->dispc,
            channel);
 omap_irq_update(dev);
 spin_unlock_irqrestore(&priv->wait_lock, flags);

 return 0;
}
