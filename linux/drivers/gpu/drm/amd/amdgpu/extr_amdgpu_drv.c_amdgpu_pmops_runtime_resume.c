
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int switch_power_state; } ;
struct device {int dummy; } ;


 int DRM_SWITCH_POWER_CHANGING ;
 int DRM_SWITCH_POWER_ON ;
 int EINVAL ;
 int PCI_D0 ;
 int amdgpu_device_is_px (struct drm_device*) ;
 int amdgpu_device_resume (struct drm_device*,int,int) ;
 int amdgpu_has_atpx_dgpu_power_cntl () ;
 scalar_t__ amdgpu_is_atpx_hybrid () ;
 int drm_kms_helper_poll_enable (struct drm_device*) ;
 int pci_enable_device (struct pci_dev*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int amdgpu_pmops_runtime_resume(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *drm_dev = pci_get_drvdata(pdev);
 int ret;

 if (!amdgpu_device_is_px(drm_dev))
  return -EINVAL;

 drm_dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;

 if (amdgpu_is_atpx_hybrid() ||
     !amdgpu_has_atpx_dgpu_power_cntl())
  pci_set_power_state(pdev, PCI_D0);
 pci_restore_state(pdev);
 ret = pci_enable_device(pdev);
 if (ret)
  return ret;
 pci_set_master(pdev);

 ret = amdgpu_device_resume(drm_dev, 0, 0);
 drm_kms_helper_poll_enable(drm_dev);
 drm_dev->switch_power_state = DRM_SWITCH_POWER_ON;
 return 0;
}
