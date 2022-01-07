
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int fence_queue; int last_fence_retired; int vbl_received; } ;
typedef TYPE_1__ drm_mga_private_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MGA_ICLEAR ;
 int MGA_PRIMADDRESS ;
 int MGA_PRIMEND ;
 void* MGA_READ (int ) ;
 int MGA_SOFTRAPEN ;
 int const MGA_SOFTRAPICLR ;
 int MGA_STATUS ;
 int const MGA_VLINEICLR ;
 int MGA_VLINEPEN ;
 int MGA_WRITE (int ,int const) ;
 int atomic_inc (int *) ;
 int drm_handle_vblank (struct drm_device*,int ) ;
 int wake_up (int *) ;

irqreturn_t mga_driver_irq_handler(int irq, void *arg)
{
 struct drm_device *dev = (struct drm_device *) arg;
 drm_mga_private_t *dev_priv = (drm_mga_private_t *) dev->dev_private;
 int status;
 int handled = 0;

 status = MGA_READ(MGA_STATUS);


 if (status & MGA_VLINEPEN) {
  MGA_WRITE(MGA_ICLEAR, MGA_VLINEICLR);
  atomic_inc(&dev_priv->vbl_received);
  drm_handle_vblank(dev, 0);
  handled = 1;
 }


 if (status & MGA_SOFTRAPEN) {
  const u32 prim_start = MGA_READ(MGA_PRIMADDRESS);
  const u32 prim_end = MGA_READ(MGA_PRIMEND);


  MGA_WRITE(MGA_ICLEAR, MGA_SOFTRAPICLR);




  if ((prim_start & ~0x03) != (prim_end & ~0x03))
   MGA_WRITE(MGA_PRIMEND, prim_end);

  atomic_inc(&dev_priv->last_fence_retired);
  wake_up(&dev_priv->fence_queue);
  handled = 1;
 }

 if (handled)
  return IRQ_HANDLED;
 return IRQ_NONE;
}
