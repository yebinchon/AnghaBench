
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u32 ;
struct vmw_fifo_state {int capabilities; } ;
struct vmw_private {int capabilities; scalar_t__ active_display_unit; int cap_lock; int has_mob; struct vmw_fifo_state fifo; int * mmio_virt; } ;


 int SVGA3D_DEVCAP_3D ;
 scalar_t__ SVGA3D_HWVERSION_WS8_B1 ;
 int SVGA_CAP_3D ;
 int SVGA_CAP_EXTENDED_FIFO ;
 int SVGA_CAP_GBOBJECTS ;
 int SVGA_FIFO_3D_HWVERSION ;
 int SVGA_FIFO_3D_HWVERSION_REVISED ;
 int SVGA_FIFO_CAP_3D_HWVERSION_REVISED ;
 int SVGA_FIFO_MIN ;
 int SVGA_REG_DEV_CAP ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ vmw_du_legacy ;
 scalar_t__ vmw_mmio_read (int *) ;
 scalar_t__ vmw_read (struct vmw_private*,int ) ;
 int vmw_write (struct vmw_private*,int ,int ) ;

bool vmw_fifo_have_3d(struct vmw_private *dev_priv)
{
 u32 *fifo_mem = dev_priv->mmio_virt;
 uint32_t fifo_min, hwversion;
 const struct vmw_fifo_state *fifo = &dev_priv->fifo;

 if (!(dev_priv->capabilities & SVGA_CAP_3D))
  return 0;

 if (dev_priv->capabilities & SVGA_CAP_GBOBJECTS) {
  uint32_t result;

  if (!dev_priv->has_mob)
   return 0;

  spin_lock(&dev_priv->cap_lock);
  vmw_write(dev_priv, SVGA_REG_DEV_CAP, SVGA3D_DEVCAP_3D);
  result = vmw_read(dev_priv, SVGA_REG_DEV_CAP);
  spin_unlock(&dev_priv->cap_lock);

  return (result != 0);
 }

 if (!(dev_priv->capabilities & SVGA_CAP_EXTENDED_FIFO))
  return 0;

 fifo_min = vmw_mmio_read(fifo_mem + SVGA_FIFO_MIN);
 if (fifo_min <= SVGA_FIFO_3D_HWVERSION * sizeof(unsigned int))
  return 0;

 hwversion = vmw_mmio_read(fifo_mem +
      ((fifo->capabilities &
        SVGA_FIFO_CAP_3D_HWVERSION_REVISED) ?
       SVGA_FIFO_3D_HWVERSION_REVISED :
       SVGA_FIFO_3D_HWVERSION));

 if (hwversion == 0)
  return 0;

 if (hwversion < SVGA3D_HWVERSION_WS8_B1)
  return 0;


 if (dev_priv->active_display_unit == vmw_du_legacy)
  return 0;

 return 1;
}
