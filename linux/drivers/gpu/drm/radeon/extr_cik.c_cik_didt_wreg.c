
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int didt_idx_lock; } ;


 int CIK_DIDT_IND_DATA ;
 int CIK_DIDT_IND_INDEX ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void cik_didt_wreg(struct radeon_device *rdev, u32 reg, u32 v)
{
 unsigned long flags;

 spin_lock_irqsave(&rdev->didt_idx_lock, flags);
 WREG32(CIK_DIDT_IND_INDEX, (reg));
 WREG32(CIK_DIDT_IND_DATA, (v));
 spin_unlock_irqrestore(&rdev->didt_idx_lock, flags);
}
