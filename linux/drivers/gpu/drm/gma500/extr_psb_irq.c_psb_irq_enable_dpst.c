
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int irqmask_lock; } ;
struct drm_device {scalar_t__ dev_private; } ;


 int mid_enable_pipe_event (struct drm_psb_private*,int ) ;
 int psb_irq_turn_on_dpst (struct drm_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int psb_irq_enable_dpst(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv =
  (struct drm_psb_private *) dev->dev_private;
 unsigned long irqflags;

 spin_lock_irqsave(&dev_priv->irqmask_lock, irqflags);


 mid_enable_pipe_event(dev_priv, 0);
 psb_irq_turn_on_dpst(dev);

 spin_unlock_irqrestore(&dev_priv->irqmask_lock, irqflags);
 return 0;
}
