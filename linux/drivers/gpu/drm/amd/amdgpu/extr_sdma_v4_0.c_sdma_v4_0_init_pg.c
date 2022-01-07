
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int pg_flags; int asic_type; } ;


 int AMD_PG_SUPPORT_SDMA ;


 int sdma_v4_1_init_power_gating (struct amdgpu_device*) ;
 int sdma_v4_1_update_power_gating (struct amdgpu_device*,int) ;

__attribute__((used)) static void sdma_v4_0_init_pg(struct amdgpu_device *adev)
{
 if (!(adev->pg_flags & AMD_PG_SUPPORT_SDMA))
  return;

 switch (adev->asic_type) {
 case 129:
 case 128:
  sdma_v4_1_init_power_gating(adev);
  sdma_v4_1_update_power_gating(adev, 1);
  break;
 default:
  break;
 }
}
