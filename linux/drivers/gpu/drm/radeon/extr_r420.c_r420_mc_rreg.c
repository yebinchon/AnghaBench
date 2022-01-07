
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int mc_idx_lock; } ;


 int RREG32 (int ) ;
 int R_0001F8_MC_IND_INDEX ;
 int R_0001FC_MC_IND_DATA ;
 int S_0001F8_MC_IND_ADDR (int ) ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 r420_mc_rreg(struct radeon_device *rdev, u32 reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&rdev->mc_idx_lock, flags);
 WREG32(R_0001F8_MC_IND_INDEX, S_0001F8_MC_IND_ADDR(reg));
 r = RREG32(R_0001FC_MC_IND_DATA);
 spin_unlock_irqrestore(&rdev->mc_idx_lock, flags);
 return r;
}
