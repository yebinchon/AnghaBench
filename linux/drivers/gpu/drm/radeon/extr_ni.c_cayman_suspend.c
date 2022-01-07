
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ has_uvd; } ;


 int cayman_cp_enable (struct radeon_device*,int) ;
 int cayman_dma_stop (struct radeon_device*) ;
 int cayman_pcie_gart_disable (struct radeon_device*) ;
 int evergreen_irq_suspend (struct radeon_device*) ;
 int radeon_audio_fini (struct radeon_device*) ;
 int radeon_pm_suspend (struct radeon_device*) ;
 int radeon_uvd_suspend (struct radeon_device*) ;
 int radeon_vm_manager_fini (struct radeon_device*) ;
 int radeon_wb_disable (struct radeon_device*) ;
 int uvd_v1_0_fini (struct radeon_device*) ;

int cayman_suspend(struct radeon_device *rdev)
{
 radeon_pm_suspend(rdev);
 radeon_audio_fini(rdev);
 radeon_vm_manager_fini(rdev);
 cayman_cp_enable(rdev, 0);
 cayman_dma_stop(rdev);
 if (rdev->has_uvd) {
  uvd_v1_0_fini(rdev);
  radeon_uvd_suspend(rdev);
 }
 evergreen_irq_suspend(rdev);
 radeon_wb_disable(rdev);
 cayman_pcie_gart_disable(rdev);
 return 0;
}
