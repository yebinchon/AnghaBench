
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ has_uvd; } ;


 int evergreen_irq_suspend (struct radeon_device*) ;
 int evergreen_pcie_gart_disable (struct radeon_device*) ;
 int r600_dma_stop (struct radeon_device*) ;
 int r700_cp_stop (struct radeon_device*) ;
 int radeon_audio_fini (struct radeon_device*) ;
 int radeon_pm_suspend (struct radeon_device*) ;
 int radeon_uvd_suspend (struct radeon_device*) ;
 int radeon_wb_disable (struct radeon_device*) ;
 int uvd_v1_0_fini (struct radeon_device*) ;

int evergreen_suspend(struct radeon_device *rdev)
{
 radeon_pm_suspend(rdev);
 radeon_audio_fini(rdev);
 if (rdev->has_uvd) {
  uvd_v1_0_fini(rdev);
  radeon_uvd_suspend(rdev);
 }
 r700_cp_stop(rdev);
 r600_dma_stop(rdev);
 evergreen_irq_suspend(rdev);
 radeon_wb_disable(rdev);
 evergreen_pcie_gart_disable(rdev);

 return 0;
}
