
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct radeon_device {int smc_idx_lock; } ;


 int SMC_SRAM_DATA ;
 int WREG32 (int ,int ) ;
 int rv770_set_smc_sram_address (struct radeon_device*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int rv770_write_smc_sram_dword(struct radeon_device *rdev,
          u16 smc_address, u32 value, u16 limit)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&rdev->smc_idx_lock, flags);
 ret = rv770_set_smc_sram_address(rdev, smc_address, limit);
 if (ret == 0)
  WREG32(SMC_SRAM_DATA, value);
 spin_unlock_irqrestore(&rdev->smc_idx_lock, flags);

 return ret;
}
