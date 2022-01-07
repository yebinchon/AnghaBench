
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;






__attribute__((used)) static void gmc_v10_0_init_golden_registers(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 130:
 case 128:
 case 129:
  break;
 default:
  break;
 }
}
