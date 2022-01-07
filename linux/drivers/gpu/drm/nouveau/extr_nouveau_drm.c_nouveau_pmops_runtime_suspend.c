
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int switch_power_state; } ;
struct device {int dummy; } ;


 int DRM_SWITCH_POWER_DYNAMIC_OFF ;
 int EBUSY ;
 int PCI_D3cold ;
 int nouveau_do_suspend (struct drm_device*,int) ;
 int nouveau_pmops_runtime () ;
 int nouveau_switcheroo_optimus_dsm () ;
 int pci_disable_device (struct pci_dev*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_ignore_hotplug (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pm_runtime_forbid (struct device*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int
nouveau_pmops_runtime_suspend(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *drm_dev = pci_get_drvdata(pdev);
 int ret;

 if (!nouveau_pmops_runtime()) {
  pm_runtime_forbid(dev);
  return -EBUSY;
 }

 nouveau_switcheroo_optimus_dsm();
 ret = nouveau_do_suspend(drm_dev, 1);
 pci_save_state(pdev);
 pci_disable_device(pdev);
 pci_ignore_hotplug(pdev);
 pci_set_power_state(pdev, PCI_D3cold);
 drm_dev->switch_power_state = DRM_SWITCH_POWER_DYNAMIC_OFF;
 return ret;
}
