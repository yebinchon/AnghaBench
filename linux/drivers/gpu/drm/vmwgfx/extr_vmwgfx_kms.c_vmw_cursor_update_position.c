
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct vmw_private {int cursor_lock; int * mmio_virt; } ;


 int SVGA_FIFO_CURSOR_COUNT ;
 int SVGA_FIFO_CURSOR_ON ;
 int SVGA_FIFO_CURSOR_X ;
 int SVGA_FIFO_CURSOR_Y ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmw_mmio_read (int *) ;
 int vmw_mmio_write (int,int *) ;

__attribute__((used)) static void vmw_cursor_update_position(struct vmw_private *dev_priv,
           bool show, int x, int y)
{
 u32 *fifo_mem = dev_priv->mmio_virt;
 uint32_t count;

 spin_lock(&dev_priv->cursor_lock);
 vmw_mmio_write(show ? 1 : 0, fifo_mem + SVGA_FIFO_CURSOR_ON);
 vmw_mmio_write(x, fifo_mem + SVGA_FIFO_CURSOR_X);
 vmw_mmio_write(y, fifo_mem + SVGA_FIFO_CURSOR_Y);
 count = vmw_mmio_read(fifo_mem + SVGA_FIFO_CURSOR_COUNT);
 vmw_mmio_write(++count, fifo_mem + SVGA_FIFO_CURSOR_COUNT);
 spin_unlock(&dev_priv->cursor_lock);
}
