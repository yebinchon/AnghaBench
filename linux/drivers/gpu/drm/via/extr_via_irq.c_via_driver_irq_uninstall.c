
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_6__ {int irq_enable_mask; } ;
typedef TYPE_1__ drm_via_private_t ;


 int DRM_DEBUG (char*) ;
 int VIA_IRQ_VBLANK_ENABLE ;
 int VIA_REG_INTERRUPT ;
 int via_read (TYPE_1__*,int ) ;
 int via_write (TYPE_1__*,int ,int) ;
 int via_write8 (TYPE_1__*,int,int) ;
 int via_write8_mask (TYPE_1__*,int,int,int ) ;

void via_driver_irq_uninstall(struct drm_device *dev)
{
 drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
 u32 status;

 DRM_DEBUG("\n");
 if (dev_priv) {



  via_write8(dev_priv, 0x83d4, 0x11);
  via_write8_mask(dev_priv, 0x83d5, 0x30, 0);

  status = via_read(dev_priv, VIA_REG_INTERRUPT);
  via_write(dev_priv, VIA_REG_INTERRUPT, status &
     ~(VIA_IRQ_VBLANK_ENABLE | dev_priv->irq_enable_mask));
 }
}
