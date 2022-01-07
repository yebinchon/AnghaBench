
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int irqmask_lock; int dsr_enable; } ;
struct drm_device {scalar_t__ dev_private; } ;


 int PIPE_TE_ENABLE ;
 int mid_disable_pipe_event (struct drm_psb_private*,int) ;
 int psb_disable_pipestat (struct drm_psb_private*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mdfld_disable_te(struct drm_device *dev, int pipe)
{
 struct drm_psb_private *dev_priv =
  (struct drm_psb_private *) dev->dev_private;
 unsigned long irqflags;

 if (!dev_priv->dsr_enable)
  return;

 spin_lock_irqsave(&dev_priv->irqmask_lock, irqflags);

 mid_disable_pipe_event(dev_priv, pipe);
 psb_disable_pipestat(dev_priv, pipe, PIPE_TE_ENABLE);

 spin_unlock_irqrestore(&dev_priv->irqmask_lock, irqflags);
}
