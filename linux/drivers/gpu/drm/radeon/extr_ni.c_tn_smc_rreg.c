
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int smc_idx_lock; } ;


 int RREG32 (int ) ;
 int TN_SMC_IND_DATA_0 ;
 int TN_SMC_IND_INDEX_0 ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 tn_smc_rreg(struct radeon_device *rdev, u32 reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&rdev->smc_idx_lock, flags);
 WREG32(TN_SMC_IND_INDEX_0, (reg));
 r = RREG32(TN_SMC_IND_DATA_0);
 spin_unlock_irqrestore(&rdev->smc_idx_lock, flags);
 return r;
}
