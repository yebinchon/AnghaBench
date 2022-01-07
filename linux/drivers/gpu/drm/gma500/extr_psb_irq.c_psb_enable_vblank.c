
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_psb_private {int irqmask_lock; int vdc_irq_mask; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int EINVAL ;
 scalar_t__ IS_MFLD (struct drm_device*) ;
 int PIPEACONF_ENABLE ;
 int PIPE_VBLANK_INTERRUPT_ENABLE ;
 int PSB_INT_ENABLE_R ;
 int PSB_INT_MASK_R ;
 int PSB_WVDC32 (int ,int ) ;
 int REG_READ (int) ;
 int _PSB_VSYNC_PIPEA_FLAG ;
 int _PSB_VSYNC_PIPEB_FLAG ;
 scalar_t__ gma_power_begin (struct drm_device*,int) ;
 int gma_power_end (struct drm_device*) ;
 int mdfld_enable_te (struct drm_device*,unsigned int) ;
 int mid_pipeconf (unsigned int) ;
 int psb_enable_pipestat (struct drm_psb_private*,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int psb_enable_vblank(struct drm_device *dev, unsigned int pipe)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 unsigned long irqflags;
 uint32_t reg_val = 0;
 uint32_t pipeconf_reg = mid_pipeconf(pipe);



 if (IS_MFLD(dev))
  return mdfld_enable_te(dev, pipe);

 if (gma_power_begin(dev, 0)) {
  reg_val = REG_READ(pipeconf_reg);
  gma_power_end(dev);
 }

 if (!(reg_val & PIPEACONF_ENABLE))
  return -EINVAL;

 spin_lock_irqsave(&dev_priv->irqmask_lock, irqflags);

 if (pipe == 0)
  dev_priv->vdc_irq_mask |= _PSB_VSYNC_PIPEA_FLAG;
 else if (pipe == 1)
  dev_priv->vdc_irq_mask |= _PSB_VSYNC_PIPEB_FLAG;

 PSB_WVDC32(~dev_priv->vdc_irq_mask, PSB_INT_MASK_R);
 PSB_WVDC32(dev_priv->vdc_irq_mask, PSB_INT_ENABLE_R);
 psb_enable_pipestat(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_ENABLE);

 spin_unlock_irqrestore(&dev_priv->irqmask_lock, irqflags);

 return 0;
}
