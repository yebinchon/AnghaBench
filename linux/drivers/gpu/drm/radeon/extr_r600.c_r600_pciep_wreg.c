
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int pciep_idx_lock; } ;
typedef int reg ;


 int PCIE_PORT_DATA ;
 int PCIE_PORT_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r600_pciep_wreg(struct radeon_device *rdev, u32 reg, u32 v)
{
 unsigned long flags;

 spin_lock_irqsave(&rdev->pciep_idx_lock, flags);
 WREG32(PCIE_PORT_INDEX, ((reg) & 0xff));
 (void)RREG32(PCIE_PORT_INDEX);
 WREG32(PCIE_PORT_DATA, (v));
 (void)RREG32(PCIE_PORT_DATA);
 spin_unlock_irqrestore(&rdev->pciep_idx_lock, flags);
}
