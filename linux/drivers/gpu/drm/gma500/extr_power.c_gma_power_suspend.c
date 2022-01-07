
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_psb_private {scalar_t__ display_count; int suspended; } ;
struct drm_device {int dev; struct drm_psb_private* dev_private; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int dev_err (int ,char*) ;
 int gma_suspend_display (struct drm_device*) ;
 int gma_suspend_pci (struct pci_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int power_mutex ;
 int psb_irq_uninstall (struct drm_device*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

int gma_power_suspend(struct device *_dev)
{
 struct pci_dev *pdev = to_pci_dev(_dev);
 struct drm_device *dev = pci_get_drvdata(pdev);
 struct drm_psb_private *dev_priv = dev->dev_private;

 mutex_lock(&power_mutex);
 if (!dev_priv->suspended) {
  if (dev_priv->display_count) {
   mutex_unlock(&power_mutex);
   dev_err(dev->dev, "GPU hardware busy, cannot suspend\n");
   return -EBUSY;
  }
  psb_irq_uninstall(dev);
  gma_suspend_display(dev);
  gma_suspend_pci(pdev);
 }
 mutex_unlock(&power_mutex);
 return 0;
}
