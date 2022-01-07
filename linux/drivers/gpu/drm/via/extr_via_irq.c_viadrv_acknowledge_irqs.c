
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int irq_pending_mask; } ;
typedef TYPE_1__ drm_via_private_t ;


 int VIA_REG_INTERRUPT ;
 int via_read (TYPE_1__*,int ) ;
 int via_write (TYPE_1__*,int ,int) ;

__attribute__((used)) static __inline__ void viadrv_acknowledge_irqs(drm_via_private_t *dev_priv)
{
 u32 status;

 if (dev_priv) {

  status = via_read(dev_priv, VIA_REG_INTERRUPT);
  via_write(dev_priv, VIA_REG_INTERRUPT, status |
     dev_priv->irq_pending_mask);
 }
}
