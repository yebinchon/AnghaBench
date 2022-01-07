
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dev; } ;


 scalar_t__ amdgim_is_hwperf (struct amdgpu_device*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int dev_attr_power_dpm_force_performance_level ;
 int dev_attr_pp_dpm_mclk ;
 int dev_attr_pp_dpm_sclk ;
 int device_remove_file (int ,int *) ;

void amdgpu_pm_virt_sysfs_fini(struct amdgpu_device *adev)
{
 if (!(amdgpu_sriov_vf(adev) && amdgim_is_hwperf(adev)))
  return;

 device_remove_file(adev->dev, &dev_attr_power_dpm_force_performance_level);
 device_remove_file(adev->dev, &dev_attr_pp_dpm_sclk);
 device_remove_file(adev->dev, &dev_attr_pp_dpm_mclk);
}
