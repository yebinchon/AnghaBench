
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int irq_enabled; scalar_t__ dev_private; } ;
typedef int drm_mga_private_t ;


 int MGA_IEN ;
 int MGA_WRITE (int ,int ) ;

void mga_driver_irq_uninstall(struct drm_device *dev)
{
 drm_mga_private_t *dev_priv = (drm_mga_private_t *) dev->dev_private;
 if (!dev_priv)
  return;


 MGA_WRITE(MGA_IEN, 0);

 dev->irq_enabled = 0;
}
