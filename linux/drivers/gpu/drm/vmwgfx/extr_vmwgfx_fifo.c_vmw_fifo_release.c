
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmw_private {int traces_state; int enable_state; int config_done_state; int last_read_seqno; int * mmio_virt; } ;
struct vmw_fifo_state {int * dynamic_buffer; int * static_buffer; int marker_queue; } ;


 int SVGA_FIFO_FENCE ;
 int SVGA_REG_BUSY ;
 int SVGA_REG_CONFIG_DONE ;
 int SVGA_REG_ENABLE ;
 int SVGA_REG_SYNC ;
 int SVGA_REG_TRACES ;
 int SVGA_SYNC_GENERIC ;
 scalar_t__ likely (int ) ;
 int vfree (int *) ;
 int vmw_marker_queue_takedown (int *) ;
 int vmw_mmio_read (int *) ;
 scalar_t__ vmw_read (struct vmw_private*,int ) ;
 int vmw_write (struct vmw_private*,int ,int ) ;

void vmw_fifo_release(struct vmw_private *dev_priv, struct vmw_fifo_state *fifo)
{
 u32 *fifo_mem = dev_priv->mmio_virt;

 vmw_write(dev_priv, SVGA_REG_SYNC, SVGA_SYNC_GENERIC);
 while (vmw_read(dev_priv, SVGA_REG_BUSY) != 0)
  ;

 dev_priv->last_read_seqno = vmw_mmio_read(fifo_mem + SVGA_FIFO_FENCE);

 vmw_write(dev_priv, SVGA_REG_CONFIG_DONE,
    dev_priv->config_done_state);
 vmw_write(dev_priv, SVGA_REG_ENABLE,
    dev_priv->enable_state);
 vmw_write(dev_priv, SVGA_REG_TRACES,
    dev_priv->traces_state);

 vmw_marker_queue_takedown(&fifo->marker_queue);

 if (likely(fifo->static_buffer != ((void*)0))) {
  vfree(fifo->static_buffer);
  fifo->static_buffer = ((void*)0);
 }

 if (likely(fifo->dynamic_buffer != ((void*)0))) {
  vfree(fifo->dynamic_buffer);
  fifo->dynamic_buffer = ((void*)0);
 }
}
