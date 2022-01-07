
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_psb_private {int irqmask_lock; } ;
struct drm_device {scalar_t__ dev_private; } ;


 int EINVAL ;
 int PIPEACONF_ENABLE ;
 int PIPE_TE_ENABLE ;
 int REG_READ (int) ;
 scalar_t__ gma_power_begin (struct drm_device*,int) ;
 int gma_power_end (struct drm_device*) ;
 int mid_enable_pipe_event (struct drm_psb_private*,int) ;
 int mid_pipeconf (int) ;
 int psb_enable_pipestat (struct drm_psb_private*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mdfld_enable_te(struct drm_device *dev, int pipe)
{
 struct drm_psb_private *dev_priv =
  (struct drm_psb_private *) dev->dev_private;
 unsigned long irqflags;
 uint32_t reg_val = 0;
 uint32_t pipeconf_reg = mid_pipeconf(pipe);

 if (gma_power_begin(dev, 0)) {
  reg_val = REG_READ(pipeconf_reg);
  gma_power_end(dev);
 }

 if (!(reg_val & PIPEACONF_ENABLE))
  return -EINVAL;

 spin_lock_irqsave(&dev_priv->irqmask_lock, irqflags);

 mid_enable_pipe_event(dev_priv, pipe);
 psb_enable_pipestat(dev_priv, pipe, PIPE_TE_ENABLE);

 spin_unlock_irqrestore(&dev_priv->irqmask_lock, irqflags);

 return 0;
}
