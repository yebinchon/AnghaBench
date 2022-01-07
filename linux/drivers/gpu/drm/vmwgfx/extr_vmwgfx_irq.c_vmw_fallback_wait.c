
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct vmw_fifo_state {int rwsem; } ;
struct vmw_private {int fence_queue; int * mmio_virt; int marker_seq; scalar_t__ cman; struct vmw_fifo_state fifo; } ;


 int DEFINE_WAIT (int ) ;
 int DRM_ERROR (char*) ;
 int ERESTARTSYS ;
 int HZ ;
 int SVGA_FIFO_FENCE ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int __wait ;
 int atomic_read (int *) ;
 int current ;
 int down_read (int *) ;
 int finish_wait (int *,int *) ;
 unsigned long jiffies ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int schedule_timeout (int) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int up_read (int *) ;
 int vmw_cmdbuf_idle (scalar_t__,int,int) ;
 int vmw_fifo_idle (struct vmw_private*,int) ;
 int vmw_mmio_write (int,int *) ;
 int vmw_seqno_passed (struct vmw_private*,int) ;
 int wake_up_all (int *) ;

int vmw_fallback_wait(struct vmw_private *dev_priv,
        bool lazy,
        bool fifo_idle,
        uint32_t seqno,
        bool interruptible,
        unsigned long timeout)
{
 struct vmw_fifo_state *fifo_state = &dev_priv->fifo;

 uint32_t count = 0;
 uint32_t signal_seq;
 int ret;
 unsigned long end_jiffies = jiffies + timeout;
 bool (*wait_condition)(struct vmw_private *, uint32_t);
 DEFINE_WAIT(__wait);

 wait_condition = (fifo_idle) ? &vmw_fifo_idle :
  &vmw_seqno_passed;





 if (fifo_idle) {
  down_read(&fifo_state->rwsem);
  if (dev_priv->cman) {
   ret = vmw_cmdbuf_idle(dev_priv->cman, interruptible,
           10*HZ);
   if (ret)
    goto out_err;
  }
 }

 signal_seq = atomic_read(&dev_priv->marker_seq);
 ret = 0;

 for (;;) {
  prepare_to_wait(&dev_priv->fence_queue, &__wait,
    (interruptible) ?
    TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE);
  if (wait_condition(dev_priv, seqno))
   break;
  if (time_after_eq(jiffies, end_jiffies)) {
   DRM_ERROR("SVGA device lockup.\n");
   break;
  }
  if (lazy)
   schedule_timeout(1);
  else if ((++count & 0x0F) == 0) {





   __set_current_state(TASK_RUNNING);
   schedule();
   __set_current_state((interruptible) ?
         TASK_INTERRUPTIBLE :
         TASK_UNINTERRUPTIBLE);
  }
  if (interruptible && signal_pending(current)) {
   ret = -ERESTARTSYS;
   break;
  }
 }
 finish_wait(&dev_priv->fence_queue, &__wait);
 if (ret == 0 && fifo_idle) {
  u32 *fifo_mem = dev_priv->mmio_virt;

  vmw_mmio_write(signal_seq, fifo_mem + SVGA_FIFO_FENCE);
 }
 wake_up_all(&dev_priv->fence_queue);
out_err:
 if (fifo_idle)
  up_read(&fifo_state->rwsem);

 return ret;
}
