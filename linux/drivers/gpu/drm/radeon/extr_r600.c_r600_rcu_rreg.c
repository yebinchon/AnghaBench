
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int rcu_idx_lock; } ;
typedef int reg ;


 int R600_RCU_DATA ;
 int R600_RCU_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 r600_rcu_rreg(struct radeon_device *rdev, u32 reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&rdev->rcu_idx_lock, flags);
 WREG32(R600_RCU_INDEX, ((reg) & 0x1fff));
 r = RREG32(R600_RCU_DATA);
 spin_unlock_irqrestore(&rdev->rcu_idx_lock, flags);
 return r;
}
