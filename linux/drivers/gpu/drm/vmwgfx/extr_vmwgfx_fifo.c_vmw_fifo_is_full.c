
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u32 ;
struct vmw_private {int * mmio_virt; } ;


 int SVGA_FIFO_MAX ;
 int SVGA_FIFO_MIN ;
 int SVGA_FIFO_NEXT_CMD ;
 int SVGA_FIFO_STOP ;
 scalar_t__ vmw_mmio_read (int *) ;

__attribute__((used)) static bool vmw_fifo_is_full(struct vmw_private *dev_priv, uint32_t bytes)
{
 u32 *fifo_mem = dev_priv->mmio_virt;
 uint32_t max = vmw_mmio_read(fifo_mem + SVGA_FIFO_MAX);
 uint32_t next_cmd = vmw_mmio_read(fifo_mem + SVGA_FIFO_NEXT_CMD);
 uint32_t min = vmw_mmio_read(fifo_mem + SVGA_FIFO_MIN);
 uint32_t stop = vmw_mmio_read(fifo_mem + SVGA_FIFO_STOP);

 return ((max - next_cmd) + (stop - min) <= bytes);
}
