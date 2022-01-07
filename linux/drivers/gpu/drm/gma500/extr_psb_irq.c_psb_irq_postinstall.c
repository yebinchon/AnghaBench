
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_psb_private {int vdc_irq_mask; int irqmask_lock; TYPE_2__* ops; } ;
struct drm_device {TYPE_1__* vblank; struct drm_psb_private* dev_private; } ;
struct TYPE_4__ {int (* hotplug_enable ) (struct drm_device*,int) ;} ;
struct TYPE_3__ {scalar_t__ enabled; } ;


 int PIPE_VBLANK_INTERRUPT_ENABLE ;
 int PSB_CR_EVENT_HOST_ENABLE ;
 int PSB_CR_EVENT_HOST_ENABLE2 ;
 int PSB_HWSTAM ;
 int PSB_INT_ENABLE_R ;
 int PSB_RSGX32 (int ) ;
 int PSB_WSGX32 (int ,int ) ;
 int PSB_WVDC32 (int,int ) ;
 int _PSB_CE2_BIF_REQUESTER_FAULT ;
 int _PSB_CE_TWOD_COMPLETE ;
 int psb_disable_pipestat (struct drm_psb_private*,int,int ) ;
 int psb_enable_pipestat (struct drm_psb_private*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct drm_device*,int) ;

int psb_irq_postinstall(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 unsigned long irqflags;

 spin_lock_irqsave(&dev_priv->irqmask_lock, irqflags);


 PSB_WSGX32(_PSB_CE2_BIF_REQUESTER_FAULT, PSB_CR_EVENT_HOST_ENABLE2);
 PSB_WSGX32(_PSB_CE_TWOD_COMPLETE, PSB_CR_EVENT_HOST_ENABLE);
 PSB_RSGX32(PSB_CR_EVENT_HOST_ENABLE);


 PSB_WVDC32(dev_priv->vdc_irq_mask, PSB_INT_ENABLE_R);
 PSB_WVDC32(0xFFFFFFFF, PSB_HWSTAM);

 if (dev->vblank[0].enabled)
  psb_enable_pipestat(dev_priv, 0, PIPE_VBLANK_INTERRUPT_ENABLE);
 else
  psb_disable_pipestat(dev_priv, 0, PIPE_VBLANK_INTERRUPT_ENABLE);

 if (dev->vblank[1].enabled)
  psb_enable_pipestat(dev_priv, 1, PIPE_VBLANK_INTERRUPT_ENABLE);
 else
  psb_disable_pipestat(dev_priv, 1, PIPE_VBLANK_INTERRUPT_ENABLE);

 if (dev->vblank[2].enabled)
  psb_enable_pipestat(dev_priv, 2, PIPE_VBLANK_INTERRUPT_ENABLE);
 else
  psb_disable_pipestat(dev_priv, 2, PIPE_VBLANK_INTERRUPT_ENABLE);

 if (dev_priv->ops->hotplug_enable)
  dev_priv->ops->hotplug_enable(dev, 1);

 spin_unlock_irqrestore(&dev_priv->irqmask_lock, irqflags);
 return 0;
}
