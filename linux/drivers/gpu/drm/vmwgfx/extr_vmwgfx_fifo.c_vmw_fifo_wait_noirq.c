
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_private {int fifo_queue; } ;


 int DEFINE_WAIT (int ) ;
 int DRM_ERROR (char*) ;
 int DRM_INFO (char*) ;
 int EBUSY ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_UNINTERRUPTIBLE ;
 int __wait ;
 int current ;
 int finish_wait (int *,int *) ;
 unsigned long jiffies ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule_timeout (int) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int vmw_fifo_is_full (struct vmw_private*,int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static int vmw_fifo_wait_noirq(struct vmw_private *dev_priv,
          uint32_t bytes, bool interruptible,
          unsigned long timeout)
{
 int ret = 0;
 unsigned long end_jiffies = jiffies + timeout;
 DEFINE_WAIT(__wait);

 DRM_INFO("Fifo wait noirq.\n");

 for (;;) {
  prepare_to_wait(&dev_priv->fifo_queue, &__wait,
    (interruptible) ?
    TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE);
  if (!vmw_fifo_is_full(dev_priv, bytes))
   break;
  if (time_after_eq(jiffies, end_jiffies)) {
   ret = -EBUSY;
   DRM_ERROR("SVGA device lockup.\n");
   break;
  }
  schedule_timeout(1);
  if (interruptible && signal_pending(current)) {
   ret = -ERESTARTSYS;
   break;
  }
 }
 finish_wait(&dev_priv->fifo_queue, &__wait);
 wake_up_all(&dev_priv->fifo_queue);
 DRM_INFO("Fifo noirq exit.\n");
 return ret;
}
