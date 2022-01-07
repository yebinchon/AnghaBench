
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int mc_idx_lock; } ;


 int C_0028F8_MC_IND_ADDR ;
 int RREG32 (int ) ;
 int R_0028F8_MC_INDEX ;
 int R_0028FC_MC_DATA ;
 int S_0028F8_MC_IND_ADDR (int ) ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

uint32_t rs780_mc_rreg(struct radeon_device *rdev, uint32_t reg)
{
 unsigned long flags;
 uint32_t r;

 spin_lock_irqsave(&rdev->mc_idx_lock, flags);
 WREG32(R_0028F8_MC_INDEX, S_0028F8_MC_IND_ADDR(reg));
 r = RREG32(R_0028FC_MC_DATA);
 WREG32(R_0028F8_MC_INDEX, ~C_0028F8_MC_IND_ADDR);
 spin_unlock_irqrestore(&rdev->mc_idx_lock, flags);
 return r;
}
