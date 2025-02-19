
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timespec64 {int tv_nsec; int tv_sec; } ;
struct drm_file {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_8__ {scalar_t__ num_irqs; TYPE_5__* via_irqs; } ;
typedef TYPE_3__ drm_via_private_t ;
struct TYPE_7__ {int tval_usec; int tval_sec; } ;
struct TYPE_6__ {scalar_t__ irq; int type; int sequence; } ;
struct TYPE_9__ {TYPE_2__ reply; TYPE_1__ request; } ;
typedef TYPE_4__ drm_via_irqwait_t ;
struct TYPE_10__ {int irq_received; } ;
typedef TYPE_5__ drm_via_irq_t ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int NSEC_PER_USEC ;

 int VIA_IRQ_FLAGS_MASK ;
 int VIA_IRQ_FORCE_SEQUENCE ;

 int VIA_IRQ_SIGNAL ;
 int _DRM_VBLANK_RELATIVE ;
 int atomic_read (int *) ;
 int ktime_get_ts64 (struct timespec64*) ;
 int via_driver_irq_wait (struct drm_device*,scalar_t__,int,int *) ;

int via_wait_irq(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_via_irqwait_t *irqwait = data;
 struct timespec64 now;
 int ret = 0;
 drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
 drm_via_irq_t *cur_irq = dev_priv->via_irqs;
 int force_sequence;

 if (irqwait->request.irq >= dev_priv->num_irqs) {
  DRM_ERROR("Trying to wait on unknown irq %d\n",
     irqwait->request.irq);
  return -EINVAL;
 }

 cur_irq += irqwait->request.irq;

 switch (irqwait->request.type & ~VIA_IRQ_FLAGS_MASK) {
 case 128:
  irqwait->request.sequence +=
   atomic_read(&cur_irq->irq_received);
  irqwait->request.type &= ~_DRM_VBLANK_RELATIVE;
 case 129:
  break;
 default:
  return -EINVAL;
 }

 if (irqwait->request.type & VIA_IRQ_SIGNAL) {
  DRM_ERROR("Signals on Via IRQs not implemented yet.\n");
  return -EINVAL;
 }

 force_sequence = (irqwait->request.type & VIA_IRQ_FORCE_SEQUENCE);

 ret = via_driver_irq_wait(dev, irqwait->request.irq, force_sequence,
      &irqwait->request.sequence);
 ktime_get_ts64(&now);
 irqwait->reply.tval_sec = now.tv_sec;
 irqwait->reply.tval_usec = now.tv_nsec / NSEC_PER_USEC;

 return ret;
}
