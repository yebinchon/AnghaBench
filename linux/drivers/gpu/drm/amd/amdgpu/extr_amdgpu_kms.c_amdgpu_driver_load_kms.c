
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int dev; TYPE_1__* pdev; void* dev_private; } ;
struct amdgpu_device {scalar_t__ rmmio; } ;
struct TYPE_3__ {int dev; } ;


 unsigned long AMD_IS_APU ;
 unsigned long AMD_IS_PX ;
 int DPM_FLAG_NEVER_SKIP ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int amdgpu_acpi_init (struct amdgpu_device*) ;
 int amdgpu_device_init (struct amdgpu_device*,struct drm_device*,TYPE_1__*,unsigned long) ;
 scalar_t__ amdgpu_device_is_px (struct drm_device*) ;
 int amdgpu_driver_unload_kms (struct drm_device*) ;
 scalar_t__ amdgpu_has_atpx () ;
 scalar_t__ amdgpu_has_atpx_dgpu_power_cntl () ;
 scalar_t__ amdgpu_is_atpx_hybrid () ;
 scalar_t__ amdgpu_runtime_pm ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int dev_pm_set_driver_flags (int ,int ) ;
 struct amdgpu_device* kzalloc (int,int ) ;
 int pci_is_thunderbolt_attached (TYPE_1__*) ;
 int pm_runtime_allow (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int pm_runtime_set_active (int ) ;
 int pm_runtime_set_autosuspend_delay (int ,int) ;
 int pm_runtime_use_autosuspend (int ) ;

int amdgpu_driver_load_kms(struct drm_device *dev, unsigned long flags)
{
 struct amdgpu_device *adev;
 int r, acpi_status;

 adev = kzalloc(sizeof(struct amdgpu_device), GFP_KERNEL);
 if (adev == ((void*)0)) {
  return -ENOMEM;
 }
 dev->dev_private = (void *)adev;

 if ((amdgpu_runtime_pm != 0) &&
     amdgpu_has_atpx() &&
     (amdgpu_is_atpx_hybrid() ||
      amdgpu_has_atpx_dgpu_power_cntl()) &&
     ((flags & AMD_IS_APU) == 0) &&
     !pci_is_thunderbolt_attached(dev->pdev))
  flags |= AMD_IS_PX;







 r = amdgpu_device_init(adev, dev, dev->pdev, flags);
 if (r) {
  dev_err(&dev->pdev->dev, "Fatal error during GPU init\n");
  goto out;
 }




 if (!r) {
  acpi_status = amdgpu_acpi_init(adev);
  if (acpi_status)
   dev_dbg(&dev->pdev->dev,
    "Error during ACPI methods call\n");
 }

 if (amdgpu_device_is_px(dev)) {
  dev_pm_set_driver_flags(dev->dev, DPM_FLAG_NEVER_SKIP);
  pm_runtime_use_autosuspend(dev->dev);
  pm_runtime_set_autosuspend_delay(dev->dev, 5000);
  pm_runtime_set_active(dev->dev);
  pm_runtime_allow(dev->dev);
  pm_runtime_mark_last_busy(dev->dev);
  pm_runtime_put_autosuspend(dev->dev);
 }

out:
 if (r) {

  if (adev->rmmio && amdgpu_device_is_px(dev))
   pm_runtime_put_noidle(dev->dev);
  amdgpu_driver_unload_kms(dev);
 }

 return r;
}
