
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int pcie_idx_lock; int pcie_reg_mask; } ;
typedef int reg ;


 int RADEON_PCIE_DATA ;
 int RADEON_PCIE_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

uint32_t rv370_pcie_rreg(struct radeon_device *rdev, uint32_t reg)
{
 unsigned long flags;
 uint32_t r;

 spin_lock_irqsave(&rdev->pcie_idx_lock, flags);
 WREG32(RADEON_PCIE_INDEX, ((reg) & rdev->pcie_reg_mask));
 r = RREG32(RADEON_PCIE_DATA);
 spin_unlock_irqrestore(&rdev->pcie_idx_lock, flags);
 return r;
}
