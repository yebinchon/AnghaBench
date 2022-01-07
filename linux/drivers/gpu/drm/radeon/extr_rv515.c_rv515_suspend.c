
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int flags; } ;


 int RADEON_IS_PCIE ;
 int r100_cp_disable (struct radeon_device*) ;
 int radeon_pm_suspend (struct radeon_device*) ;
 int radeon_wb_disable (struct radeon_device*) ;
 int rs600_irq_disable (struct radeon_device*) ;
 int rv370_pcie_gart_disable (struct radeon_device*) ;

int rv515_suspend(struct radeon_device *rdev)
{
 radeon_pm_suspend(rdev);
 r100_cp_disable(rdev);
 radeon_wb_disable(rdev);
 rs600_irq_disable(rdev);
 if (rdev->flags & RADEON_IS_PCIE)
  rv370_pcie_gart_disable(rdev);
 return 0;
}
