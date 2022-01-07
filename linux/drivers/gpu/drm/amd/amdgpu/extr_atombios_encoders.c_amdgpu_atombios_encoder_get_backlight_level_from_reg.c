
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int ATOM_S2_CURRENT_BL_LEVEL_MASK ;
 int ATOM_S2_CURRENT_BL_LEVEL_SHIFT ;
 int RREG32 (int ) ;
 int mmBIOS_SCRATCH_2 ;

u8
amdgpu_atombios_encoder_get_backlight_level_from_reg(struct amdgpu_device *adev)
{
 u8 backlight_level;
 u32 bios_2_scratch;

 bios_2_scratch = RREG32(mmBIOS_SCRATCH_2);

 backlight_level = ((bios_2_scratch & ATOM_S2_CURRENT_BL_LEVEL_MASK) >>
      ATOM_S2_CURRENT_BL_LEVEL_SHIFT);

 return backlight_level;
}
