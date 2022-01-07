
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int smc_idx_lock; } ;


 int SMC_IND_DATA_0 ;
 int WREG32 (int ,int ) ;
 int si_set_smc_sram_address (struct amdgpu_device*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int amdgpu_si_write_smc_sram_dword(struct amdgpu_device *adev, u32 smc_address,
       u32 value, u32 limit)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&adev->smc_idx_lock, flags);
 ret = si_set_smc_sram_address(adev, smc_address, limit);
 if (ret == 0)
  WREG32(SMC_IND_DATA_0, value);
 spin_unlock_irqrestore(&adev->smc_idx_lock, flags);

 return ret;
}
