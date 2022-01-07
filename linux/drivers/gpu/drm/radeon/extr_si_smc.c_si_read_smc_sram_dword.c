
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int smc_idx_lock; } ;


 int RREG32 (int ) ;
 int SMC_IND_DATA_0 ;
 int si_set_smc_sram_address (struct radeon_device*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int si_read_smc_sram_dword(struct radeon_device *rdev, u32 smc_address,
      u32 *value, u32 limit)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&rdev->smc_idx_lock, flags);
 ret = si_set_smc_sram_address(rdev, smc_address, limit);
 if (ret == 0)
  *value = RREG32(SMC_IND_DATA_0);
 spin_unlock_irqrestore(&rdev->smc_idx_lock, flags);

 return ret;
}
