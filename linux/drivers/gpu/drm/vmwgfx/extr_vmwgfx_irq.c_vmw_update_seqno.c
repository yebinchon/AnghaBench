
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u32 ;
struct vmw_private {scalar_t__ last_read_seqno; int fman; int * mmio_virt; } ;
struct vmw_fifo_state {int marker_queue; } ;


 int SVGA_FIFO_FENCE ;
 int vmw_fences_update (int ) ;
 int vmw_marker_pull (int *,scalar_t__) ;
 scalar_t__ vmw_mmio_read (int *) ;

void vmw_update_seqno(struct vmw_private *dev_priv,
    struct vmw_fifo_state *fifo_state)
{
 u32 *fifo_mem = dev_priv->mmio_virt;
 uint32_t seqno = vmw_mmio_read(fifo_mem + SVGA_FIFO_FENCE);

 if (dev_priv->last_read_seqno != seqno) {
  dev_priv->last_read_seqno = seqno;
  vmw_marker_pull(&fifo_state->marker_queue, seqno);
  vmw_fences_update(dev_priv->fman);
 }
}
