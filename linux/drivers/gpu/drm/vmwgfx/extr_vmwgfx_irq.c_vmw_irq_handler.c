
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_private {int irqthread_pending; int fifo_queue; scalar_t__ io_start; int irq_mask; } ;
struct drm_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int READ_ONCE (int ) ;
 int SVGA_IRQFLAG_ANY_FENCE ;
 int SVGA_IRQFLAG_COMMAND_BUFFER ;
 int SVGA_IRQFLAG_ERROR ;
 int SVGA_IRQFLAG_FENCE_GOAL ;
 int SVGA_IRQFLAG_FIFO_PROGRESS ;
 scalar_t__ VMWGFX_IRQSTATUS_PORT ;
 int VMW_IRQTHREAD_CMDBUF ;
 int VMW_IRQTHREAD_FENCE ;
 int inl (scalar_t__) ;
 scalar_t__ likely (int) ;
 int outl (int,scalar_t__) ;
 int test_and_set_bit (int ,int ) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static irqreturn_t vmw_irq_handler(int irq, void *arg)
{
 struct drm_device *dev = (struct drm_device *)arg;
 struct vmw_private *dev_priv = vmw_priv(dev);
 uint32_t status, masked_status;
 irqreturn_t ret = IRQ_HANDLED;

 status = inl(dev_priv->io_start + VMWGFX_IRQSTATUS_PORT);
 masked_status = status & READ_ONCE(dev_priv->irq_mask);

 if (likely(status))
  outl(status, dev_priv->io_start + VMWGFX_IRQSTATUS_PORT);

 if (!status)
  return IRQ_NONE;

 if (masked_status & SVGA_IRQFLAG_FIFO_PROGRESS)
  wake_up_all(&dev_priv->fifo_queue);

 if ((masked_status & (SVGA_IRQFLAG_ANY_FENCE |
         SVGA_IRQFLAG_FENCE_GOAL)) &&
     !test_and_set_bit(VMW_IRQTHREAD_FENCE, dev_priv->irqthread_pending))
  ret = IRQ_WAKE_THREAD;

 if ((masked_status & (SVGA_IRQFLAG_COMMAND_BUFFER |
         SVGA_IRQFLAG_ERROR)) &&
     !test_and_set_bit(VMW_IRQTHREAD_CMDBUF,
         dev_priv->irqthread_pending))
  ret = IRQ_WAKE_THREAD;

 return ret;
}
