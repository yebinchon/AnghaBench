
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int suspend_locked; int fman; scalar_t__ enable_fb; scalar_t__ suspend_state; int reservation_sem; int num_fifo_resources; int bdev; int dev; } ;
struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EBUSY ;
 int WARN_ON (int ) ;
 int __vmw_svga_disable (struct vmw_private*) ;
 scalar_t__ atomic_read (int *) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 int ttm_bo_swapout_all (int *) ;
 int ttm_suspend_lock (int *) ;
 int ttm_suspend_unlock (int *) ;
 int vmw_execbuf_release_pinned_bo (struct vmw_private*) ;
 int vmw_fb_off (struct vmw_private*) ;
 int vmw_fb_on (struct vmw_private*) ;
 int vmw_fence_fifo_down (int ) ;
 int vmw_fifo_resource_dec (struct vmw_private*) ;
 int vmw_fifo_resource_inc (struct vmw_private*) ;
 int vmw_kms_resume (struct drm_device*) ;
 int vmw_kms_suspend (int ) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;
 int vmw_release_device_early (struct vmw_private*) ;
 int vmw_release_device_late (struct vmw_private*) ;
 int vmw_request_device_late (struct vmw_private*) ;
 int vmw_resource_evict_all (struct vmw_private*) ;

__attribute__((used)) static int vmw_pm_freeze(struct device *kdev)
{
 struct pci_dev *pdev = to_pci_dev(kdev);
 struct drm_device *dev = pci_get_drvdata(pdev);
 struct vmw_private *dev_priv = vmw_priv(dev);
 int ret;





 ttm_suspend_unlock(&dev_priv->reservation_sem);
 ret = vmw_kms_suspend(dev_priv->dev);
 if (ret) {
  ttm_suspend_lock(&dev_priv->reservation_sem);
  DRM_ERROR("Failed to freeze modesetting.\n");
  return ret;
 }
 if (dev_priv->enable_fb)
  vmw_fb_off(dev_priv);

 ttm_suspend_lock(&dev_priv->reservation_sem);
 vmw_execbuf_release_pinned_bo(dev_priv);
 vmw_resource_evict_all(dev_priv);
 vmw_release_device_early(dev_priv);
 ttm_bo_swapout_all(&dev_priv->bdev);
 if (dev_priv->enable_fb)
  vmw_fifo_resource_dec(dev_priv);
 if (atomic_read(&dev_priv->num_fifo_resources) != 0) {
  DRM_ERROR("Can't hibernate while 3D resources are active.\n");
  if (dev_priv->enable_fb)
   vmw_fifo_resource_inc(dev_priv);
  WARN_ON(vmw_request_device_late(dev_priv));
  dev_priv->suspend_locked = 0;
  ttm_suspend_unlock(&dev_priv->reservation_sem);
  if (dev_priv->suspend_state)
   vmw_kms_resume(dev);
  if (dev_priv->enable_fb)
   vmw_fb_on(dev_priv);
  return -EBUSY;
 }

 vmw_fence_fifo_down(dev_priv->fman);
 __vmw_svga_disable(dev_priv);

 vmw_release_device_late(dev_priv);
 return 0;
}
