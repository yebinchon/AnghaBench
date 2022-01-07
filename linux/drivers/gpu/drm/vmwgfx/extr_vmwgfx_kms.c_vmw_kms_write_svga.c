
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int capabilities; scalar_t__ mmio_virt; } ;


 int DRM_ERROR (char*,unsigned int,unsigned int,unsigned int) ;
 int EINVAL ;
 int SVGA_CAP_PITCHLOCK ;
 scalar_t__ SVGA_FIFO_PITCHLOCK ;
 int SVGA_REG_BITS_PER_PIXEL ;
 int SVGA_REG_DEPTH ;
 int SVGA_REG_HEIGHT ;
 int SVGA_REG_PITCHLOCK ;
 int SVGA_REG_WIDTH ;
 scalar_t__ vmw_fifo_have_pitchlock (struct vmw_private*) ;
 int vmw_mmio_write (unsigned int,scalar_t__) ;
 unsigned int vmw_read (struct vmw_private*,int ) ;
 int vmw_write (struct vmw_private*,int ,unsigned int) ;

int vmw_kms_write_svga(struct vmw_private *vmw_priv,
   unsigned width, unsigned height, unsigned pitch,
   unsigned bpp, unsigned depth)
{
 if (vmw_priv->capabilities & SVGA_CAP_PITCHLOCK)
  vmw_write(vmw_priv, SVGA_REG_PITCHLOCK, pitch);
 else if (vmw_fifo_have_pitchlock(vmw_priv))
  vmw_mmio_write(pitch, vmw_priv->mmio_virt +
          SVGA_FIFO_PITCHLOCK);
 vmw_write(vmw_priv, SVGA_REG_WIDTH, width);
 vmw_write(vmw_priv, SVGA_REG_HEIGHT, height);
 vmw_write(vmw_priv, SVGA_REG_BITS_PER_PIXEL, bpp);

 if (vmw_read(vmw_priv, SVGA_REG_DEPTH) != depth) {
  DRM_ERROR("Invalid depth %u for %u bpp, host expects %u\n",
     depth, bpp, vmw_read(vmw_priv, SVGA_REG_DEPTH));
  return -EINVAL;
 }

 return 0;
}
