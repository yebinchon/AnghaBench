
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int mc_idx_lock; } ;


 int R_000070_MC_IND_INDEX ;
 int R_000074_MC_IND_DATA ;
 int S_000070_MC_IND_ADDR (int) ;
 int S_000070_MC_IND_CITF_ARB0 (int) ;
 int S_000070_MC_IND_WR_EN (int) ;
 int WREG32 (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rs600_mc_wreg(struct radeon_device *rdev, uint32_t reg, uint32_t v)
{
 unsigned long flags;

 spin_lock_irqsave(&rdev->mc_idx_lock, flags);
 WREG32(R_000070_MC_IND_INDEX, S_000070_MC_IND_ADDR(reg) |
  S_000070_MC_IND_CITF_ARB0(1) | S_000070_MC_IND_WR_EN(1));
 WREG32(R_000074_MC_IND_DATA, v);
 spin_unlock_irqrestore(&rdev->mc_idx_lock, flags);
}
