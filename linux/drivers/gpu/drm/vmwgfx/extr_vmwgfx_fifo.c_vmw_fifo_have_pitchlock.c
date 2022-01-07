
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct vmw_private {int capabilities; int * mmio_virt; } ;


 int SVGA_CAP_EXTENDED_FIFO ;
 int SVGA_FIFO_CAPABILITIES ;
 int SVGA_FIFO_CAP_PITCHLOCK ;
 int vmw_mmio_read (int *) ;

bool vmw_fifo_have_pitchlock(struct vmw_private *dev_priv)
{
 u32 *fifo_mem = dev_priv->mmio_virt;
 uint32_t caps;

 if (!(dev_priv->capabilities & SVGA_CAP_EXTENDED_FIFO))
  return 0;

 caps = vmw_mmio_read(fifo_mem + SVGA_FIFO_CAPABILITIES);
 if (caps & SVGA_FIFO_CAP_PITCHLOCK)
  return 1;

 return 0;
}
