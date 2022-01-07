
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
typedef int ktime_t ;
typedef int irqreturn_t ;
struct TYPE_5__ {int last_vblank_valid; int nsec_per_vblank; int num_irqs; int* irq_map; int vbl_received; int last_vblank; TYPE_2__* via_irqs; } ;
typedef TYPE_1__ drm_via_private_t ;
struct TYPE_6__ {int pending_mask; int irq_queue; int irq_received; } ;
typedef TYPE_2__ drm_via_irq_t ;


 int DRM_DEBUG (char*,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int VIA_IRQ_VBLANK_PENDING ;
 int VIA_REG_INTERRUPT ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int drm_handle_vblank (struct drm_device*,int ) ;
 size_t drm_via_irq_dma0_td ;
 size_t drm_via_irq_dma1_td ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int) ;
 int via_dmablit_handler (struct drm_device*,int,int) ;
 int via_read (TYPE_1__*,int ) ;
 int via_write (TYPE_1__*,int ,int) ;
 int wake_up (int *) ;

irqreturn_t via_driver_irq_handler(int irq, void *arg)
{
 struct drm_device *dev = (struct drm_device *) arg;
 drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
 u32 status;
 int handled = 0;
 ktime_t cur_vblank;
 drm_via_irq_t *cur_irq = dev_priv->via_irqs;
 int i;

 status = via_read(dev_priv, VIA_REG_INTERRUPT);
 if (status & VIA_IRQ_VBLANK_PENDING) {
  atomic_inc(&dev_priv->vbl_received);
  if (!(atomic_read(&dev_priv->vbl_received) & 0x0F)) {
   cur_vblank = ktime_get();
   if (dev_priv->last_vblank_valid) {
    dev_priv->nsec_per_vblank =
     ktime_sub(cur_vblank,
      dev_priv->last_vblank) >> 4;
   }
   dev_priv->last_vblank = cur_vblank;
   dev_priv->last_vblank_valid = 1;
  }
  if (!(atomic_read(&dev_priv->vbl_received) & 0xFF)) {
   DRM_DEBUG("nsec per vblank is: %llu\n",
      ktime_to_ns(dev_priv->nsec_per_vblank));
  }
  drm_handle_vblank(dev, 0);
  handled = 1;
 }

 for (i = 0; i < dev_priv->num_irqs; ++i) {
  if (status & cur_irq->pending_mask) {
   atomic_inc(&cur_irq->irq_received);
   wake_up(&cur_irq->irq_queue);
   handled = 1;
   if (dev_priv->irq_map[drm_via_irq_dma0_td] == i)
    via_dmablit_handler(dev, 0, 1);
   else if (dev_priv->irq_map[drm_via_irq_dma1_td] == i)
    via_dmablit_handler(dev, 1, 1);
  }
  cur_irq++;
 }


 via_write(dev_priv, VIA_REG_INTERRUPT, status);


 if (handled)
  return IRQ_HANDLED;
 else
  return IRQ_NONE;
}
