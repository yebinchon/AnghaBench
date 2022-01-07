
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;


 int amdgpu_device_asic_has_dc_support (int ) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;

bool amdgpu_device_has_dc_support(struct amdgpu_device *adev)
{
 if (amdgpu_sriov_vf(adev))
  return 0;

 return amdgpu_device_asic_has_dc_support(adev->asic_type);
}
