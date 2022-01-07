
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct vmw_fifo_state {int capabilities; int marker_queue; } ;
struct vmw_private {int marker_seq; struct vmw_fifo_state fifo; } ;
struct svga_fifo_cmd_fence {int fence; } ;


 int ENOMEM ;
 int HZ ;
 int SVGA_CMD_FENCE ;
 int SVGA_FIFO_CAP_FENCE ;
 int * VMW_FIFO_RESERVE (struct vmw_private*,int) ;
 int atomic_add_return (int,int *) ;
 int atomic_read (int *) ;
 scalar_t__ unlikely (int ) ;
 int vmw_fallback_wait (struct vmw_private*,int,int,int,int,int) ;
 int vmw_fifo_commit (struct vmw_private*,int ) ;
 int vmw_fifo_commit_flush (struct vmw_private*,int) ;
 int vmw_marker_push (int *,int) ;
 int vmw_update_seqno (struct vmw_private*,struct vmw_fifo_state*) ;

int vmw_fifo_send_fence(struct vmw_private *dev_priv, uint32_t *seqno)
{
 struct vmw_fifo_state *fifo_state = &dev_priv->fifo;
 struct svga_fifo_cmd_fence *cmd_fence;
 u32 *fm;
 int ret = 0;
 uint32_t bytes = sizeof(u32) + sizeof(*cmd_fence);

 fm = VMW_FIFO_RESERVE(dev_priv, bytes);
 if (unlikely(fm == ((void*)0))) {
  *seqno = atomic_read(&dev_priv->marker_seq);
  ret = -ENOMEM;
  (void)vmw_fallback_wait(dev_priv, 0, 1, *seqno,
     0, 3*HZ);
  goto out_err;
 }

 do {
  *seqno = atomic_add_return(1, &dev_priv->marker_seq);
 } while (*seqno == 0);

 if (!(fifo_state->capabilities & SVGA_FIFO_CAP_FENCE)) {






  vmw_fifo_commit(dev_priv, 0);
  return 0;
 }

 *fm++ = SVGA_CMD_FENCE;
 cmd_fence = (struct svga_fifo_cmd_fence *) fm;
 cmd_fence->fence = *seqno;
 vmw_fifo_commit_flush(dev_priv, bytes);
 (void) vmw_marker_push(&fifo_state->marker_queue, *seqno);
 vmw_update_seqno(dev_priv, fifo_state);

out_err:
 return ret;
}
