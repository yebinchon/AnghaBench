
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {scalar_t__ bios_scratch_reg_offset; } ;


 int ATOM_S3_ASIC_GUI_ENGINE_HUNG ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;

void amdgpu_atombios_scratch_regs_engine_hung(struct amdgpu_device *adev,
           bool hung)
{
 u32 tmp = RREG32(adev->bios_scratch_reg_offset + 3);

 if (hung)
  tmp |= ATOM_S3_ASIC_GUI_ENGINE_HUNG;
 else
  tmp &= ~ATOM_S3_ASIC_GUI_ENGINE_HUNG;

 WREG32(adev->bios_scratch_reg_offset + 3, tmp);
}
