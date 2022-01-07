
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct amdgpu_device* dev_private; int dev; } ;
struct amdgpu_device {int * rmmio; } ;


 int amdgpu_acpi_fini (struct amdgpu_device*) ;
 int amdgpu_device_fini (struct amdgpu_device*) ;
 scalar_t__ amdgpu_device_is_px (struct drm_device*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int amdgpu_unregister_gpu_instance (struct amdgpu_device*) ;
 int amdgpu_virt_request_full_gpu (struct amdgpu_device*,int) ;
 int kfree (struct amdgpu_device*) ;
 int pm_runtime_forbid (int ) ;
 int pm_runtime_get_sync (int ) ;

void amdgpu_driver_unload_kms(struct drm_device *dev)
{
 struct amdgpu_device *adev = dev->dev_private;

 if (adev == ((void*)0))
  return;

 amdgpu_unregister_gpu_instance(adev);

 if (adev->rmmio == ((void*)0))
  goto done_free;

 if (amdgpu_sriov_vf(adev))
  amdgpu_virt_request_full_gpu(adev, 0);

 if (amdgpu_device_is_px(dev)) {
  pm_runtime_get_sync(dev->dev);
  pm_runtime_forbid(dev->dev);
 }

 amdgpu_acpi_fini(adev);

 amdgpu_device_fini(adev);

done_free:
 kfree(adev);
 dev->dev_private = ((void*)0);
}
