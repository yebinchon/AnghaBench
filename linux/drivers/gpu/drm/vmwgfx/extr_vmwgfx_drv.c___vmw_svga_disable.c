
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* man; } ;
struct vmw_private {int svga_lock; TYPE_2__ bdev; } ;
struct TYPE_3__ {int use_type; } ;


 int SVGA_REG_ENABLE ;
 int SVGA_REG_ENABLE_ENABLE ;
 int SVGA_REG_ENABLE_HIDE ;
 size_t TTM_PL_VRAM ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmw_write (struct vmw_private*,int ,int) ;

__attribute__((used)) static void __vmw_svga_disable(struct vmw_private *dev_priv)
{
 spin_lock(&dev_priv->svga_lock);
 if (dev_priv->bdev.man[TTM_PL_VRAM].use_type) {
  dev_priv->bdev.man[TTM_PL_VRAM].use_type = 0;
  vmw_write(dev_priv, SVGA_REG_ENABLE,
     SVGA_REG_ENABLE_HIDE |
     SVGA_REG_ENABLE_ENABLE);
 }
 spin_unlock(&dev_priv->svga_lock);
}
