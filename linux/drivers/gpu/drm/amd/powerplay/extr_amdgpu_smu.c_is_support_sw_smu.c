
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {scalar_t__ asic_type; } ;


 scalar_t__ CHIP_ARCTURUS ;
 scalar_t__ CHIP_VEGA20 ;
 int amdgpu_dpm ;

bool is_support_sw_smu(struct amdgpu_device *adev)
{
 if (adev->asic_type == CHIP_VEGA20)
  return (amdgpu_dpm == 2) ? 1 : 0;
 else if (adev->asic_type >= CHIP_ARCTURUS)
  return 1;
 else
  return 0;
}
