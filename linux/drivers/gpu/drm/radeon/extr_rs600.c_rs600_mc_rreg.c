
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct radeon_device {int mc_idx_lock; } ;


 int RREG32 (int ) ;
 int R_000070_MC_IND_INDEX ;
 int R_000074_MC_IND_DATA ;
 int S_000070_MC_IND_ADDR (int ) ;
 int S_000070_MC_IND_CITF_ARB0 (int) ;
 int WREG32 (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

uint32_t rs600_mc_rreg(struct radeon_device *rdev, uint32_t reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&rdev->mc_idx_lock, flags);
 WREG32(R_000070_MC_IND_INDEX, S_000070_MC_IND_ADDR(reg) |
  S_000070_MC_IND_CITF_ARB0(1));
 r = RREG32(R_000074_MC_IND_DATA);
 spin_unlock_irqrestore(&rdev->mc_idx_lock, flags);
 return r;
}
