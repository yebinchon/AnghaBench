
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_mga_private_t ;


 int MGA_ICLEAR ;
 int MGA_IEN ;
 int MGA_WRITE (int ,int ) ;

void mga_driver_irq_preinstall(struct drm_device *dev)
{
 drm_mga_private_t *dev_priv = (drm_mga_private_t *) dev->dev_private;


 MGA_WRITE(MGA_IEN, 0);

 MGA_WRITE(MGA_ICLEAR, ~0);
}
