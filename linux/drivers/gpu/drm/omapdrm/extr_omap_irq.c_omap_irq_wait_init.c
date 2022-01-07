
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_irq_wait {int count; int node; int irqmask; int wq; } ;
struct omap_drm_private {int wait_lock; int wait_list; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;


 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 struct omap_irq_wait* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int omap_irq_update (struct drm_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct omap_irq_wait * omap_irq_wait_init(struct drm_device *dev,
  u32 irqmask, int count)
{
 struct omap_drm_private *priv = dev->dev_private;
 struct omap_irq_wait *wait = kzalloc(sizeof(*wait), GFP_KERNEL);
 unsigned long flags;

 init_waitqueue_head(&wait->wq);
 wait->irqmask = irqmask;
 wait->count = count;

 spin_lock_irqsave(&priv->wait_lock, flags);
 list_add(&wait->node, &priv->wait_list);
 omap_irq_update(dev);
 spin_unlock_irqrestore(&priv->wait_lock, flags);

 return wait;
}
