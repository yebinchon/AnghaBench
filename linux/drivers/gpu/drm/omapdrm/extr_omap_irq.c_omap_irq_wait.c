
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_irq_wait {scalar_t__ count; int node; int wq; } ;
struct omap_drm_private {int wait_lock; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;


 int kfree (struct omap_irq_wait*) ;
 int list_del (int *) ;
 int omap_irq_update (struct drm_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_timeout (int ,int,unsigned long) ;

int omap_irq_wait(struct drm_device *dev, struct omap_irq_wait *wait,
  unsigned long timeout)
{
 struct omap_drm_private *priv = dev->dev_private;
 unsigned long flags;
 int ret;

 ret = wait_event_timeout(wait->wq, (wait->count <= 0), timeout);

 spin_lock_irqsave(&priv->wait_lock, flags);
 list_del(&wait->node);
 omap_irq_update(dev);
 spin_unlock_irqrestore(&priv->wait_lock, flags);

 kfree(wait);

 return ret == 0 ? -1 : 0;
}
