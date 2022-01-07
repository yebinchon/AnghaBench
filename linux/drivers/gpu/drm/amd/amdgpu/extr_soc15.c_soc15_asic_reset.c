
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int in_suspend; } ;




 int amdgpu_inc_vram_lost (struct amdgpu_device*) ;
 int soc15_asic_baco_reset (struct amdgpu_device*) ;
 int soc15_asic_mode1_reset (struct amdgpu_device*) ;
 int soc15_asic_reset_method (struct amdgpu_device*) ;
 int soc15_mode2_reset (struct amdgpu_device*) ;

__attribute__((used)) static int soc15_asic_reset(struct amdgpu_device *adev)
{
 switch (soc15_asic_reset_method(adev)) {
  case 129:
   if (!adev->in_suspend)
    amdgpu_inc_vram_lost(adev);
   return soc15_asic_baco_reset(adev);
  case 128:
   return soc15_mode2_reset(adev);
  default:
   if (!adev->in_suspend)
    amdgpu_inc_vram_lost(adev);
   return soc15_asic_mode1_reset(adev);
 }
}
