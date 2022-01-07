
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vmw_fifo_state {int capabilities; } ;
struct vmw_private {scalar_t__ last_read_seqno; int capabilities; int fence_queue; struct vmw_fifo_state fifo; } ;


 long EBUSY ;
 int SVGA_CAP_IRQMASK ;
 int SVGA_FIFO_CAP_FENCE ;
 int SVGA_SYNC_GENERIC ;
 scalar_t__ VMW_FENCE_WRAP ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;
 int vmw_fallback_wait (struct vmw_private*,int,int,scalar_t__,int,unsigned long) ;
 int vmw_fifo_ping_host (struct vmw_private*,int ) ;
 int vmw_seqno_passed (struct vmw_private*,scalar_t__) ;
 int vmw_seqno_waiter_add (struct vmw_private*) ;
 int vmw_seqno_waiter_remove (struct vmw_private*) ;
 long wait_event_interruptible_timeout (int ,int,unsigned long) ;
 long wait_event_timeout (int ,int,unsigned long) ;

int vmw_wait_seqno(struct vmw_private *dev_priv,
        bool lazy, uint32_t seqno,
        bool interruptible, unsigned long timeout)
{
 long ret;
 struct vmw_fifo_state *fifo = &dev_priv->fifo;

 if (likely(dev_priv->last_read_seqno - seqno < VMW_FENCE_WRAP))
  return 0;

 if (likely(vmw_seqno_passed(dev_priv, seqno)))
  return 0;

 vmw_fifo_ping_host(dev_priv, SVGA_SYNC_GENERIC);

 if (!(fifo->capabilities & SVGA_FIFO_CAP_FENCE))
  return vmw_fallback_wait(dev_priv, lazy, 1, seqno,
      interruptible, timeout);

 if (!(dev_priv->capabilities & SVGA_CAP_IRQMASK))
  return vmw_fallback_wait(dev_priv, lazy, 0, seqno,
      interruptible, timeout);

 vmw_seqno_waiter_add(dev_priv);

 if (interruptible)
  ret = wait_event_interruptible_timeout
      (dev_priv->fence_queue,
       vmw_seqno_passed(dev_priv, seqno),
       timeout);
 else
  ret = wait_event_timeout
      (dev_priv->fence_queue,
       vmw_seqno_passed(dev_priv, seqno),
       timeout);

 vmw_seqno_waiter_remove(dev_priv);

 if (unlikely(ret == 0))
  ret = -EBUSY;
 else if (likely(ret > 0))
  ret = 0;

 return ret;
}
