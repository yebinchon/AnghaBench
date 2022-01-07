
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_psb_private {scalar_t__ display_count; } ;
struct drm_device {TYPE_1__* pdev; struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int dev; } ;


 int WARN_ON (int) ;
 int pm_runtime_put (int *) ;
 int power_ctrl_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void gma_power_end(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 unsigned long flags;
 spin_lock_irqsave(&power_ctrl_lock, flags);
 dev_priv->display_count--;
 WARN_ON(dev_priv->display_count < 0);
 spin_unlock_irqrestore(&power_ctrl_lock, flags);
 pm_runtime_put(&dev->pdev->dev);
}
