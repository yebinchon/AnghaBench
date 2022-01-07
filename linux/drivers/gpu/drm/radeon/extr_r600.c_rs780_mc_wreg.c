
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int mc_idx_lock; } ;


 int R_0028F8_MC_INDEX ;
 int R_0028FC_MC_DATA ;
 int S_0028F8_MC_IND_ADDR (int) ;
 int S_0028F8_MC_IND_WR_EN (int) ;
 int WREG32 (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rs780_mc_wreg(struct radeon_device *rdev, uint32_t reg, uint32_t v)
{
 unsigned long flags;

 spin_lock_irqsave(&rdev->mc_idx_lock, flags);
 WREG32(R_0028F8_MC_INDEX, S_0028F8_MC_IND_ADDR(reg) |
  S_0028F8_MC_IND_WR_EN(1));
 WREG32(R_0028FC_MC_DATA, v);
 WREG32(R_0028F8_MC_INDEX, 0x7F);
 spin_unlock_irqrestore(&rdev->mc_idx_lock, flags);
}
