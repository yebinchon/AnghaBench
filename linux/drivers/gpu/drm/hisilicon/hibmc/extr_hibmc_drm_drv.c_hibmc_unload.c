
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hibmc_drm_private {scalar_t__ msi_enabled; } ;
struct drm_device {struct hibmc_drm_private* dev_private; int pdev; scalar_t__ irq_enabled; } ;


 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int hibmc_fbdev_fini (struct hibmc_drm_private*) ;
 int hibmc_kms_fini (struct hibmc_drm_private*) ;
 int hibmc_mm_fini (struct hibmc_drm_private*) ;
 int pci_disable_msi (int ) ;

__attribute__((used)) static int hibmc_unload(struct drm_device *dev)
{
 struct hibmc_drm_private *priv = dev->dev_private;

 hibmc_fbdev_fini(priv);

 drm_atomic_helper_shutdown(dev);

 if (dev->irq_enabled)
  drm_irq_uninstall(dev);
 if (priv->msi_enabled)
  pci_disable_msi(dev->pdev);

 hibmc_kms_fini(priv);
 hibmc_mm_fini(priv);
 dev->dev_private = ((void*)0);
 return 0;
}
