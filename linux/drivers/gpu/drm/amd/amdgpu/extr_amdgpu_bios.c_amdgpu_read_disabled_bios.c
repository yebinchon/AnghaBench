
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int flags; } ;


 int AMD_IS_APU ;
 int amdgpu_asic_read_disabled_bios (struct amdgpu_device*) ;
 int igp_read_bios_from_vram (struct amdgpu_device*) ;

__attribute__((used)) static bool amdgpu_read_disabled_bios(struct amdgpu_device *adev)
{
 if (adev->flags & AMD_IS_APU)
  return igp_read_bios_from_vram(adev);
 else
  return amdgpu_asic_read_disabled_bios(adev);
}
