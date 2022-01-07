
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int pciep_idx_lock; } ;


 int PCIE_DATA ;
 int PCIE_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void cik_pciep_wreg(struct radeon_device *rdev, u32 reg, u32 v)
{
 unsigned long flags;

 spin_lock_irqsave(&rdev->pciep_idx_lock, flags);
 WREG32(PCIE_INDEX, reg);
 (void)RREG32(PCIE_INDEX);
 WREG32(PCIE_DATA, v);
 (void)RREG32(PCIE_DATA);
 spin_unlock_irqrestore(&rdev->pciep_idx_lock, flags);
}
