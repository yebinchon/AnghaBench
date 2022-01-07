
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int mc_idx_lock; } ;


 int MC_IND_DATA ;
 int MC_IND_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

uint32_t rv515_mc_rreg(struct radeon_device *rdev, uint32_t reg)
{
 unsigned long flags;
 uint32_t r;

 spin_lock_irqsave(&rdev->mc_idx_lock, flags);
 WREG32(MC_IND_INDEX, 0x7f0000 | (reg & 0xffff));
 r = RREG32(MC_IND_DATA);
 WREG32(MC_IND_INDEX, 0);
 spin_unlock_irqrestore(&rdev->mc_idx_lock, flags);

 return r;
}
