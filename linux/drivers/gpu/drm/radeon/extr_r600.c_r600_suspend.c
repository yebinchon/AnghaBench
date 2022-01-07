
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ has_uvd; } ;


 int r600_cp_stop (struct radeon_device*) ;
 int r600_irq_suspend (struct radeon_device*) ;
 int r600_pcie_gart_disable (struct radeon_device*) ;
 int radeon_audio_fini (struct radeon_device*) ;
 int radeon_pm_suspend (struct radeon_device*) ;
 int radeon_uvd_suspend (struct radeon_device*) ;
 int radeon_wb_disable (struct radeon_device*) ;
 int uvd_v1_0_fini (struct radeon_device*) ;

int r600_suspend(struct radeon_device *rdev)
{
 radeon_pm_suspend(rdev);
 radeon_audio_fini(rdev);
 r600_cp_stop(rdev);
 if (rdev->has_uvd) {
  uvd_v1_0_fini(rdev);
  radeon_uvd_suspend(rdev);
 }
 r600_irq_suspend(rdev);
 radeon_wb_disable(rdev);
 r600_pcie_gart_disable(rdev);

 return 0;
}
