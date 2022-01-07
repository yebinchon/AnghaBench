
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int gma_resume_display (struct pci_dev*) ;
 int gma_resume_pci (struct pci_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int power_mutex ;
 int psb_irq_postinstall (struct drm_device*) ;
 int psb_irq_preinstall (struct drm_device*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

int gma_power_resume(struct device *_dev)
{
 struct pci_dev *pdev = to_pci_dev(_dev);
 struct drm_device *dev = pci_get_drvdata(pdev);

 mutex_lock(&power_mutex);
 gma_resume_pci(pdev);
 gma_resume_display(pdev);
 psb_irq_preinstall(dev);
 psb_irq_postinstall(dev);
 mutex_unlock(&power_mutex);
 return 0;
}
