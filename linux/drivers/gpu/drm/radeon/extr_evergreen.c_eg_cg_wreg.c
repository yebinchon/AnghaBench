
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int cg_idx_lock; } ;
typedef int reg ;


 int EVERGREEN_CG_IND_ADDR ;
 int EVERGREEN_CG_IND_DATA ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void eg_cg_wreg(struct radeon_device *rdev, u32 reg, u32 v)
{
 unsigned long flags;

 spin_lock_irqsave(&rdev->cg_idx_lock, flags);
 WREG32(EVERGREEN_CG_IND_ADDR, ((reg) & 0xffff));
 WREG32(EVERGREEN_CG_IND_DATA, (v));
 spin_unlock_irqrestore(&rdev->cg_idx_lock, flags);
}
