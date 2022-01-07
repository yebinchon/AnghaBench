
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;
__attribute__((used)) static bool gmc_v9_0_keep_stolen_memory(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 130:
 case 132:
 case 133:
 case 131:
  return 1;
 case 129:
 case 128:
 default:
  return 0;
 }
}
