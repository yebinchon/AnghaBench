
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int didt_idx_lock; } ;


 int CIK_DIDT_IND_DATA ;
 int CIK_DIDT_IND_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 cik_didt_rreg(struct radeon_device *rdev, u32 reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&rdev->didt_idx_lock, flags);
 WREG32(CIK_DIDT_IND_INDEX, (reg));
 r = RREG32(CIK_DIDT_IND_DATA);
 spin_unlock_irqrestore(&rdev->didt_idx_lock, flags);
 return r;
}
