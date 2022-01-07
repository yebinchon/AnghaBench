
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dev; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ amdgim_is_hwperf (struct amdgpu_device*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int dev_attr_power_dpm_force_performance_level ;
 int dev_attr_pp_dpm_mclk ;
 int dev_attr_pp_dpm_sclk ;
 int device_create_file (int ,int *) ;

int amdgpu_pm_virt_sysfs_init(struct amdgpu_device *adev)
{
 int ret = 0;

 if (!(amdgpu_sriov_vf(adev) && amdgim_is_hwperf(adev)))
  return ret;

 ret = device_create_file(adev->dev, &dev_attr_pp_dpm_sclk);
 if (ret) {
  DRM_ERROR("failed to create device file pp_dpm_sclk\n");
  return ret;
 }

 ret = device_create_file(adev->dev, &dev_attr_pp_dpm_mclk);
 if (ret) {
  DRM_ERROR("failed to create device file pp_dpm_mclk\n");
  return ret;
 }

 ret = device_create_file(adev->dev, &dev_attr_power_dpm_force_performance_level);
 if (ret) {
  DRM_ERROR("failed to create device file for dpm state\n");
  return ret;
 }

 return ret;
}
