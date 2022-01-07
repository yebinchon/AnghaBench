
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct vmw_private {int * mmio_virt; } ;


 int SVGA_FIFO_BUSY ;
 int SVGA_REG_SYNC ;
 scalar_t__ cmpxchg (int *,int ,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int vmw_write (struct vmw_private*,int ,int ) ;

void vmw_fifo_ping_host(struct vmw_private *dev_priv, uint32_t reason)
{
 u32 *fifo_mem = dev_priv->mmio_virt;

 preempt_disable();
 if (cmpxchg(fifo_mem + SVGA_FIFO_BUSY, 0, 1) == 0)
  vmw_write(dev_priv, SVGA_REG_SYNC, reason);
 preempt_enable();
}
