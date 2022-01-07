
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_private {scalar_t__ io_start; } ;
struct drm_device {int dummy; } ;


 scalar_t__ VMWGFX_IRQSTATUS_PORT ;
 int inl (scalar_t__) ;
 int outl (int ,scalar_t__) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;

__attribute__((used)) static void vmw_irq_preinstall(struct drm_device *dev)
{
 struct vmw_private *dev_priv = vmw_priv(dev);
 uint32_t status;

 status = inl(dev_priv->io_start + VMWGFX_IRQSTATUS_PORT);
 outl(status, dev_priv->io_start + VMWGFX_IRQSTATUS_PORT);
}
