
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int pif_idx_lock; } ;
typedef int reg ;


 int EVERGREEN_PIF_PHY1_DATA ;
 int EVERGREEN_PIF_PHY1_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 eg_pif_phy1_rreg(struct radeon_device *rdev, u32 reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&rdev->pif_idx_lock, flags);
 WREG32(EVERGREEN_PIF_PHY1_INDEX, ((reg) & 0xffff));
 r = RREG32(EVERGREEN_PIF_PHY1_DATA);
 spin_unlock_irqrestore(&rdev->pif_idx_lock, flags);
 return r;
}
