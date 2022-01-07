
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {scalar_t__ bios_scratch_reg_offset; } ;


 int ATOM_S2_DEVICE_DPMS_STATE ;
 int ATOM_S2_VRI_BRIGHT_ENABLE ;
 int ATOM_S6_ACC_BLOCK_DISPLAY_SWITCH ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 scalar_t__ mmBIOS_SCRATCH_0 ;

__attribute__((used)) static void amdgpu_atombios_scratch_regs_init(struct amdgpu_device *adev)
{
 uint32_t bios_2_scratch, bios_6_scratch;

 adev->bios_scratch_reg_offset = mmBIOS_SCRATCH_0;

 bios_2_scratch = RREG32(adev->bios_scratch_reg_offset + 2);
 bios_6_scratch = RREG32(adev->bios_scratch_reg_offset + 6);


 bios_2_scratch &= ~ATOM_S2_VRI_BRIGHT_ENABLE;


 bios_6_scratch |= ATOM_S6_ACC_BLOCK_DISPLAY_SWITCH;


 bios_2_scratch &= ~ATOM_S2_DEVICE_DPMS_STATE;

 WREG32(adev->bios_scratch_reg_offset + 2, bios_2_scratch);
 WREG32(adev->bios_scratch_reg_offset + 6, bios_6_scratch);
}
