
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int pcie_idx_lock; int pcie_reg_mask; } ;
typedef int reg ;


 int RADEON_PCIE_DATA ;
 int RADEON_PCIE_INDEX ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rv370_pcie_wreg(struct radeon_device *rdev, uint32_t reg, uint32_t v)
{
 unsigned long flags;

 spin_lock_irqsave(&rdev->pcie_idx_lock, flags);
 WREG32(RADEON_PCIE_INDEX, ((reg) & rdev->pcie_reg_mask));
 WREG32(RADEON_PCIE_DATA, (v));
 spin_unlock_irqrestore(&rdev->pcie_idx_lock, flags);
}
