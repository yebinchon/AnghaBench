
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; int * mmhub_funcs; } ;



 int mmhub_v1_0_funcs ;

__attribute__((used)) static void gmc_v9_0_set_mmhub_funcs(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 128:
  adev->mmhub_funcs = &mmhub_v1_0_funcs;
  break;
 default:
  break;
 }
}
