
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct amdgpu_device {int flags; int smc_idx_lock; } ;


 int ALIGN (scalar_t__,int) ;
 int AMD_IS_APU ;
 scalar_t__ RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int ixROM_DATA ;
 int ixROM_INDEX ;
 int mmSMC_IND_DATA_0 ;
 int mmSMC_IND_INDEX_0 ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool cik_read_bios_from_rom(struct amdgpu_device *adev,
       u8 *bios, u32 length_bytes)
{
 u32 *dw_ptr;
 unsigned long flags;
 u32 i, length_dw;

 if (bios == ((void*)0))
  return 0;
 if (length_bytes == 0)
  return 0;

 if (adev->flags & AMD_IS_APU)
  return 0;

 dw_ptr = (u32 *)bios;
 length_dw = ALIGN(length_bytes, 4) / 4;

 spin_lock_irqsave(&adev->smc_idx_lock, flags);

 WREG32(mmSMC_IND_INDEX_0, ixROM_INDEX);
 WREG32(mmSMC_IND_DATA_0, 0);

 WREG32(mmSMC_IND_INDEX_0, ixROM_DATA);
 for (i = 0; i < length_dw; i++)
  dw_ptr[i] = RREG32(mmSMC_IND_DATA_0);
 spin_unlock_irqrestore(&adev->smc_idx_lock, flags);

 return 1;
}
