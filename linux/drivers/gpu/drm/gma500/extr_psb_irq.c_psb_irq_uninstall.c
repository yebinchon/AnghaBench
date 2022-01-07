
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_psb_private {int vdc_irq_mask; int irqmask_lock; TYPE_1__* ops; } ;
struct drm_device {TYPE_2__* vblank; struct drm_psb_private* dev_private; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct TYPE_3__ {int (* hotplug_enable ) (struct drm_device*,int) ;} ;


 int PIPE_VBLANK_INTERRUPT_ENABLE ;
 int PSB_HWSTAM ;
 int PSB_INT_ENABLE_R ;
 int PSB_INT_IDENTITY_R ;
 int PSB_INT_MASK_R ;
 int PSB_RVDC32 (int ) ;
 int PSB_WVDC32 (int,int ) ;
 int _LNC_IRQ_TOPAZ_FLAG ;
 int _PSB_IRQ_MSVDX_FLAG ;
 int _PSB_IRQ_SGX_FLAG ;
 int psb_disable_pipestat (struct drm_psb_private*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct drm_device*,int) ;
 int wmb () ;

void psb_irq_uninstall(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 unsigned long irqflags;

 spin_lock_irqsave(&dev_priv->irqmask_lock, irqflags);

 if (dev_priv->ops->hotplug_enable)
  dev_priv->ops->hotplug_enable(dev, 0);

 PSB_WVDC32(0xFFFFFFFF, PSB_HWSTAM);

 if (dev->vblank[0].enabled)
  psb_disable_pipestat(dev_priv, 0, PIPE_VBLANK_INTERRUPT_ENABLE);

 if (dev->vblank[1].enabled)
  psb_disable_pipestat(dev_priv, 1, PIPE_VBLANK_INTERRUPT_ENABLE);

 if (dev->vblank[2].enabled)
  psb_disable_pipestat(dev_priv, 2, PIPE_VBLANK_INTERRUPT_ENABLE);

 dev_priv->vdc_irq_mask &= _PSB_IRQ_SGX_FLAG |
      _PSB_IRQ_MSVDX_FLAG |
      _LNC_IRQ_TOPAZ_FLAG;


 PSB_WVDC32(~dev_priv->vdc_irq_mask, PSB_INT_MASK_R);
 PSB_WVDC32(dev_priv->vdc_irq_mask, PSB_INT_ENABLE_R);

 wmb();


 PSB_WVDC32(PSB_RVDC32(PSB_INT_IDENTITY_R), PSB_INT_IDENTITY_R);
 spin_unlock_irqrestore(&dev_priv->irqmask_lock, irqflags);
}
