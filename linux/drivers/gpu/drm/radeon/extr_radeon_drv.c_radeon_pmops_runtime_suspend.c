
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int switch_power_state; } ;
struct device {int dummy; } ;


 int DRM_SWITCH_POWER_CHANGING ;
 int DRM_SWITCH_POWER_DYNAMIC_OFF ;
 int EBUSY ;
 int PCI_D3cold ;
 int PCI_D3hot ;
 int drm_kms_helper_poll_disable (struct drm_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_ignore_hotplug (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pm_runtime_forbid (struct device*) ;
 int radeon_has_atpx_dgpu_power_cntl () ;
 scalar_t__ radeon_is_atpx_hybrid () ;
 int radeon_is_px (struct drm_device*) ;
 int radeon_suspend_kms (struct drm_device*,int,int,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int radeon_pmops_runtime_suspend(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *drm_dev = pci_get_drvdata(pdev);
 int ret;

 if (!radeon_is_px(drm_dev)) {
  pm_runtime_forbid(dev);
  return -EBUSY;
 }

 drm_dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;
 drm_kms_helper_poll_disable(drm_dev);

 ret = radeon_suspend_kms(drm_dev, 0, 0, 0);
 pci_save_state(pdev);
 pci_disable_device(pdev);
 pci_ignore_hotplug(pdev);
 if (radeon_is_atpx_hybrid())
  pci_set_power_state(pdev, PCI_D3cold);
 else if (!radeon_has_atpx_dgpu_power_cntl())
  pci_set_power_state(pdev, PCI_D3hot);
 drm_dev->switch_power_state = DRM_SWITCH_POWER_DYNAMIC_OFF;

 return 0;
}
