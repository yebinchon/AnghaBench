
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct amdgpu_device {int flags; } ;


 int ALIGN (scalar_t__,int) ;
 int AMD_IS_APU ;
 scalar_t__ RREG32 (int ) ;
 int SMUIO ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int ,int ) ;
 int mmROM_DATA ;
 int mmROM_INDEX ;

__attribute__((used)) static bool soc15_read_bios_from_rom(struct amdgpu_device *adev,
         u8 *bios, u32 length_bytes)
{
 u32 *dw_ptr;
 u32 i, length_dw;

 if (bios == ((void*)0))
  return 0;
 if (length_bytes == 0)
  return 0;

 if (adev->flags & AMD_IS_APU)
  return 0;

 dw_ptr = (u32 *)bios;
 length_dw = ALIGN(length_bytes, 4) / 4;


 WREG32(SOC15_REG_OFFSET(SMUIO, 0, mmROM_INDEX), 0);

 for (i = 0; i < length_dw; i++)
  dw_ptr[i] = RREG32(SOC15_REG_OFFSET(SMUIO, 0, mmROM_DATA));

 return 1;
}
