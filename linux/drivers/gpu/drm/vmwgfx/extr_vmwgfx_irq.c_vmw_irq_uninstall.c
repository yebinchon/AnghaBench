
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_private {int capabilities; scalar_t__ io_start; } ;
struct drm_device {int irq_enabled; int irq; } ;


 int SVGA_CAP_IRQMASK ;
 int SVGA_REG_IRQMASK ;
 scalar_t__ VMWGFX_IRQSTATUS_PORT ;
 int free_irq (int ,struct drm_device*) ;
 int inl (scalar_t__) ;
 int outl (int ,scalar_t__) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;
 int vmw_write (struct vmw_private*,int ,int ) ;

void vmw_irq_uninstall(struct drm_device *dev)
{
 struct vmw_private *dev_priv = vmw_priv(dev);
 uint32_t status;

 if (!(dev_priv->capabilities & SVGA_CAP_IRQMASK))
  return;

 if (!dev->irq_enabled)
  return;

 vmw_write(dev_priv, SVGA_REG_IRQMASK, 0);

 status = inl(dev_priv->io_start + VMWGFX_IRQSTATUS_PORT);
 outl(status, dev_priv->io_start + VMWGFX_IRQSTATUS_PORT);

 dev->irq_enabled = 0;
 free_irq(dev->irq, dev);
}
