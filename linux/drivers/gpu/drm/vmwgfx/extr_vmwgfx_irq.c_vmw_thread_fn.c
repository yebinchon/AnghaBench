
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int cman; int irqthread_pending; int fence_queue; int fman; } ;
struct drm_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int VMW_IRQTHREAD_CMDBUF ;
 int VMW_IRQTHREAD_FENCE ;
 scalar_t__ test_and_clear_bit (int ,int ) ;
 int vmw_cmdbuf_irqthread (int ) ;
 int vmw_fences_update (int ) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static irqreturn_t vmw_thread_fn(int irq, void *arg)
{
 struct drm_device *dev = (struct drm_device *)arg;
 struct vmw_private *dev_priv = vmw_priv(dev);
 irqreturn_t ret = IRQ_NONE;

 if (test_and_clear_bit(VMW_IRQTHREAD_FENCE,
          dev_priv->irqthread_pending)) {
  vmw_fences_update(dev_priv->fman);
  wake_up_all(&dev_priv->fence_queue);
  ret = IRQ_HANDLED;
 }

 if (test_and_clear_bit(VMW_IRQTHREAD_CMDBUF,
          dev_priv->irqthread_pending)) {
  vmw_cmdbuf_irqthread(dev_priv->cman);
  ret = IRQ_HANDLED;
 }

 return ret;
}
