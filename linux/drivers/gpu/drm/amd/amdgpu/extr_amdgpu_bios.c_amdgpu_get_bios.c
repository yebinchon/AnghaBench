
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int is_atom_fw; scalar_t__ asic_type; } ;


 scalar_t__ CHIP_VEGA10 ;
 int DRM_ERROR (char*) ;
 scalar_t__ amdgpu_acpi_vfct_bios (struct amdgpu_device*) ;
 scalar_t__ amdgpu_atrm_get_bios (struct amdgpu_device*) ;
 scalar_t__ amdgpu_read_bios (struct amdgpu_device*) ;
 scalar_t__ amdgpu_read_bios_from_rom (struct amdgpu_device*) ;
 scalar_t__ amdgpu_read_disabled_bios (struct amdgpu_device*) ;
 scalar_t__ amdgpu_read_platform_bios (struct amdgpu_device*) ;
 scalar_t__ igp_read_bios_from_vram (struct amdgpu_device*) ;

bool amdgpu_get_bios(struct amdgpu_device *adev)
{
 if (amdgpu_atrm_get_bios(adev))
  goto success;

 if (amdgpu_acpi_vfct_bios(adev))
  goto success;

 if (igp_read_bios_from_vram(adev))
  goto success;

 if (amdgpu_read_bios(adev))
  goto success;

 if (amdgpu_read_bios_from_rom(adev))
  goto success;

 if (amdgpu_read_disabled_bios(adev))
  goto success;

 if (amdgpu_read_platform_bios(adev))
  goto success;

 DRM_ERROR("Unable to locate a BIOS ROM\n");
 return 0;

success:
 adev->is_atom_fw = (adev->asic_type >= CHIP_VEGA10) ? 1 : 0;
 return 1;
}
