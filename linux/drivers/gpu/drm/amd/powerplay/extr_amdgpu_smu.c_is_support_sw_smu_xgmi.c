
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {scalar_t__ asic_type; } ;


 scalar_t__ CHIP_VEGA20 ;
 int amdgpu_dpm ;

bool is_support_sw_smu_xgmi(struct amdgpu_device *adev)
{
 if (amdgpu_dpm != 1)
  return 0;

 if (adev->asic_type == CHIP_VEGA20)
  return 1;

 return 0;
}
