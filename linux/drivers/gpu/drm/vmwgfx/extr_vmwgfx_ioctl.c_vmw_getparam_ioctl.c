
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct vmw_fifo_state {int capabilities; } ;
struct vmw_private {int capabilities; int capabilities2; int prim_bb_mem; int max_mob_pages; int memory_size; int max_mob_size; int has_dx; int has_sm4_1; int active_display_unit; struct vmw_fifo_state fifo; int * mmio_virt; } ;
struct vmw_fpriv {int gb_aware; } ;
struct svga_3d_compat_cap {int dummy; } ;
struct drm_vmw_getparam_arg {int param; int value; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
 int EINVAL ;
 int PAGE_SIZE ;
 int SVGA3D_DEVCAP_MAX ;
 int SVGA3D_HWVERSION_WS8_B1 ;
 int SVGA_CAP_GBOBJECTS ;
 scalar_t__ SVGA_FIFO_3D_CAPS ;
 scalar_t__ SVGA_FIFO_3D_CAPS_LAST ;
 int SVGA_FIFO_3D_HWVERSION ;
 int SVGA_FIFO_3D_HWVERSION_REVISED ;
 int SVGA_FIFO_CAP_3D_HWVERSION_REVISED ;
 int vmw_du_screen_target ;
 int vmw_fifo_have_3d (struct vmw_private*) ;
 struct vmw_fpriv* vmw_fpriv (struct drm_file*) ;
 int vmw_mmio_read (int *) ;
 int vmw_overlay_num_free_overlays (struct vmw_private*) ;
 int vmw_overlay_num_overlays (struct vmw_private*) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;

int vmw_getparam_ioctl(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct vmw_private *dev_priv = vmw_priv(dev);
 struct drm_vmw_getparam_arg *param =
     (struct drm_vmw_getparam_arg *)data;
 struct vmw_fpriv *vmw_fp = vmw_fpriv(file_priv);

 switch (param->param) {
 case 130:
  param->value = vmw_overlay_num_overlays(dev_priv);
  break;
 case 131:
  param->value = vmw_overlay_num_free_overlays(dev_priv);
  break;
 case 142:
  param->value = vmw_fifo_have_3d(dev_priv) ? 1 : 0;
  break;
 case 137:
  param->value = dev_priv->capabilities;
  break;
 case 136:
  param->value = dev_priv->capabilities2;
  break;
 case 139:
  param->value = dev_priv->fifo.capabilities;
  break;
 case 135:
  param->value = dev_priv->prim_bb_mem;
  break;
 case 138:
 {
  u32 *fifo_mem = dev_priv->mmio_virt;
  const struct vmw_fifo_state *fifo = &dev_priv->fifo;

  if ((dev_priv->capabilities & SVGA_CAP_GBOBJECTS)) {
   param->value = SVGA3D_HWVERSION_WS8_B1;
   break;
  }

  param->value =
   vmw_mmio_read(fifo_mem +
          ((fifo->capabilities &
     SVGA_FIFO_CAP_3D_HWVERSION_REVISED) ?
           SVGA_FIFO_3D_HWVERSION_REVISED :
           SVGA_FIFO_3D_HWVERSION));
  break;
 }
 case 132:
  if ((dev_priv->capabilities & SVGA_CAP_GBOBJECTS) &&
      !vmw_fp->gb_aware)
   param->value = dev_priv->max_mob_pages * PAGE_SIZE / 2;
  else
   param->value = dev_priv->memory_size;
  break;
 case 141:
  if ((dev_priv->capabilities & SVGA_CAP_GBOBJECTS) &&
      vmw_fp->gb_aware)
   param->value = SVGA3D_DEVCAP_MAX * sizeof(uint32_t);
  else if (dev_priv->capabilities & SVGA_CAP_GBOBJECTS)
   param->value = sizeof(struct svga_3d_compat_cap) +
    sizeof(uint32_t);
  else
   param->value = (SVGA_FIFO_3D_CAPS_LAST -
     SVGA_FIFO_3D_CAPS + 1) *
    sizeof(uint32_t);
  break;
 case 134:
  vmw_fp->gb_aware = 1;
  param->value = dev_priv->max_mob_pages * PAGE_SIZE;
  break;
 case 133:
  param->value = dev_priv->max_mob_size;
  break;
 case 129:
  param->value =
   (dev_priv->active_display_unit == vmw_du_screen_target);
  break;
 case 140:
  param->value = dev_priv->has_dx;
  break;
 case 128:
  param->value = dev_priv->has_sm4_1;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
