
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {scalar_t__ bios_scratch_reg_offset; } ;


 int ATOM_S6_ACC_MODE ;
 int ATOM_S6_CRITICAL_STATE ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;

void amdgpu_atombios_scratch_regs_lock(struct amdgpu_device *adev, bool lock)
{
 uint32_t bios_6_scratch;

 bios_6_scratch = RREG32(adev->bios_scratch_reg_offset + 6);

 if (lock) {
  bios_6_scratch |= ATOM_S6_CRITICAL_STATE;
  bios_6_scratch &= ~ATOM_S6_ACC_MODE;
 } else {
  bios_6_scratch &= ~ATOM_S6_CRITICAL_STATE;
  bios_6_scratch |= ATOM_S6_ACC_MODE;
 }

 WREG32(adev->bios_scratch_reg_offset + 6, bios_6_scratch);
}
