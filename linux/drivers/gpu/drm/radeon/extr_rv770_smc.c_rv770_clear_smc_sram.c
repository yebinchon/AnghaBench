
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct radeon_device {int smc_idx_lock; } ;


 int SMC_SRAM_DATA ;
 int WREG32 (int ,int ) ;
 int rv770_set_smc_sram_address (struct radeon_device*,scalar_t__,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rv770_clear_smc_sram(struct radeon_device *rdev, u16 limit)
{
 unsigned long flags;
 u16 i;

 spin_lock_irqsave(&rdev->smc_idx_lock, flags);
 for (i = 0; i < limit; i += 4) {
  rv770_set_smc_sram_address(rdev, i, limit);
  WREG32(SMC_SRAM_DATA, 0);
 }
 spin_unlock_irqrestore(&rdev->smc_idx_lock, flags);
}
