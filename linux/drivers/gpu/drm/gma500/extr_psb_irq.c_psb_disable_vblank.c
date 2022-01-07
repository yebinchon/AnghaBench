
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int irqmask_lock; int vdc_irq_mask; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 scalar_t__ IS_MFLD (struct drm_device*) ;
 int PIPE_VBLANK_INTERRUPT_ENABLE ;
 int PSB_INT_ENABLE_R ;
 int PSB_INT_MASK_R ;
 int PSB_WVDC32 (int ,int ) ;
 int _PSB_VSYNC_PIPEA_FLAG ;
 int _PSB_VSYNC_PIPEB_FLAG ;
 int mdfld_disable_te (struct drm_device*,unsigned int) ;
 int psb_disable_pipestat (struct drm_psb_private*,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void psb_disable_vblank(struct drm_device *dev, unsigned int pipe)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 unsigned long irqflags;

 if (IS_MFLD(dev))
  mdfld_disable_te(dev, pipe);
 spin_lock_irqsave(&dev_priv->irqmask_lock, irqflags);

 if (pipe == 0)
  dev_priv->vdc_irq_mask &= ~_PSB_VSYNC_PIPEA_FLAG;
 else if (pipe == 1)
  dev_priv->vdc_irq_mask &= ~_PSB_VSYNC_PIPEB_FLAG;

 PSB_WVDC32(~dev_priv->vdc_irq_mask, PSB_INT_MASK_R);
 PSB_WVDC32(dev_priv->vdc_irq_mask, PSB_INT_ENABLE_R);
 psb_disable_pipestat(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_ENABLE);

 spin_unlock_irqrestore(&dev_priv->irqmask_lock, irqflags);
}
