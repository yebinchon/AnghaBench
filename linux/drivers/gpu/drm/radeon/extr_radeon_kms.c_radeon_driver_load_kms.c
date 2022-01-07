
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct drm_device {int dev; TYPE_1__* pdev; void* dev_private; } ;
struct TYPE_5__ {int dev; } ;


 int DPM_FLAG_NEVER_SKIP ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCI_CAP_ID_AGP ;
 unsigned long RADEON_IS_AGP ;
 unsigned long RADEON_IS_IGP ;
 unsigned long RADEON_IS_PCI ;
 unsigned long RADEON_IS_PCIE ;
 unsigned long RADEON_IS_PX ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int dev_pm_set_driver_flags (int ,int ) ;
 struct radeon_device* kzalloc (int,int ) ;
 scalar_t__ pci_find_capability (TYPE_1__*,int ) ;
 scalar_t__ pci_is_pcie (TYPE_1__*) ;
 int pci_is_thunderbolt_attached (TYPE_1__*) ;
 int pm_runtime_allow (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_set_active (int ) ;
 int pm_runtime_set_autosuspend_delay (int ,int) ;
 int pm_runtime_use_autosuspend (int ) ;
 int radeon_acpi_init (struct radeon_device*) ;
 int radeon_device_init (struct radeon_device*,struct drm_device*,TYPE_1__*,unsigned long) ;
 int radeon_driver_unload_kms (struct drm_device*) ;
 scalar_t__ radeon_has_atpx () ;
 scalar_t__ radeon_is_px (struct drm_device*) ;
 int radeon_modeset_init (struct radeon_device*) ;
 scalar_t__ radeon_runtime_pm ;

int radeon_driver_load_kms(struct drm_device *dev, unsigned long flags)
{
 struct radeon_device *rdev;
 int r, acpi_status;

 rdev = kzalloc(sizeof(struct radeon_device), GFP_KERNEL);
 if (rdev == ((void*)0)) {
  return -ENOMEM;
 }
 dev->dev_private = (void *)rdev;


 if (pci_find_capability(dev->pdev, PCI_CAP_ID_AGP)) {
  flags |= RADEON_IS_AGP;
 } else if (pci_is_pcie(dev->pdev)) {
  flags |= RADEON_IS_PCIE;
 } else {
  flags |= RADEON_IS_PCI;
 }

 if ((radeon_runtime_pm != 0) &&
     radeon_has_atpx() &&
     ((flags & RADEON_IS_IGP) == 0) &&
     !pci_is_thunderbolt_attached(dev->pdev))
  flags |= RADEON_IS_PX;







 r = radeon_device_init(rdev, dev, dev->pdev, flags);
 if (r) {
  dev_err(&dev->pdev->dev, "Fatal error during GPU init\n");
  goto out;
 }





 r = radeon_modeset_init(rdev);
 if (r)
  dev_err(&dev->pdev->dev, "Fatal error during modeset init\n");




 if (!r) {
  acpi_status = radeon_acpi_init(rdev);
  if (acpi_status)
  dev_dbg(&dev->pdev->dev,
    "Error during ACPI methods call\n");
 }

 if (radeon_is_px(dev)) {
  dev_pm_set_driver_flags(dev->dev, DPM_FLAG_NEVER_SKIP);
  pm_runtime_use_autosuspend(dev->dev);
  pm_runtime_set_autosuspend_delay(dev->dev, 5000);
  pm_runtime_set_active(dev->dev);
  pm_runtime_allow(dev->dev);
  pm_runtime_mark_last_busy(dev->dev);
  pm_runtime_put_autosuspend(dev->dev);
 }

out:
 if (r)
  radeon_driver_unload_kms(dev);


 return r;
}
