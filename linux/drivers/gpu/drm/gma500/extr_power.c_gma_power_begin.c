
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_psb_private {int display_count; scalar_t__ display_power; } ;
struct drm_device {TYPE_1__* pdev; struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int dev; } ;


 int gma_resume_pci (TYPE_1__*) ;
 int pm_runtime_get (int *) ;
 int power_ctrl_lock ;
 int psb_irq_postinstall (struct drm_device*) ;
 int psb_irq_preinstall (struct drm_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool gma_power_begin(struct drm_device *dev, bool force_on)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&power_ctrl_lock, flags);

 if (dev_priv->display_power) {
  dev_priv->display_count++;
  pm_runtime_get(&dev->pdev->dev);
  spin_unlock_irqrestore(&power_ctrl_lock, flags);
  return 1;
 }
 if (force_on == 0)
  goto out_false;


 ret = gma_resume_pci(dev->pdev);
 if (ret == 0) {
  psb_irq_preinstall(dev);
  psb_irq_postinstall(dev);
  pm_runtime_get(&dev->pdev->dev);
  dev_priv->display_count++;
  spin_unlock_irqrestore(&power_ctrl_lock, flags);
  return 1;
 }
out_false:
 spin_unlock_irqrestore(&power_ctrl_lock, flags);
 return 0;
}
