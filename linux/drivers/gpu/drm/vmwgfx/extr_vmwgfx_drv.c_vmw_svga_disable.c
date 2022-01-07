
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* man; } ;
struct vmw_private {int reservation_sem; int svga_lock; TYPE_2__ bdev; int dev; } ;
struct TYPE_3__ {int use_type; } ;


 int DRM_ERROR (char*) ;
 int SVGA_REG_ENABLE ;
 int SVGA_REG_ENABLE_ENABLE ;
 int SVGA_REG_ENABLE_HIDE ;
 size_t TTM_PL_VRAM ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ ttm_bo_evict_mm (TYPE_2__*,size_t) ;
 int ttm_write_lock (int *,int) ;
 int ttm_write_unlock (int *) ;
 int vmw_kms_lost_device (int ) ;
 int vmw_write (struct vmw_private*,int ,int) ;

void vmw_svga_disable(struct vmw_private *dev_priv)
{
 vmw_kms_lost_device(dev_priv->dev);
 ttm_write_lock(&dev_priv->reservation_sem, 0);
 spin_lock(&dev_priv->svga_lock);
 if (dev_priv->bdev.man[TTM_PL_VRAM].use_type) {
  dev_priv->bdev.man[TTM_PL_VRAM].use_type = 0;
  spin_unlock(&dev_priv->svga_lock);
  if (ttm_bo_evict_mm(&dev_priv->bdev, TTM_PL_VRAM))
   DRM_ERROR("Failed evicting VRAM buffers.\n");
  vmw_write(dev_priv, SVGA_REG_ENABLE,
     SVGA_REG_ENABLE_HIDE |
     SVGA_REG_ENABLE_ENABLE);
 } else
  spin_unlock(&dev_priv->svga_lock);
 ttm_write_unlock(&dev_priv->reservation_sem);
}
