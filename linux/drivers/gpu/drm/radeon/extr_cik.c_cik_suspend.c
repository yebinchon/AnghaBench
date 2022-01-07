
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ has_vce; scalar_t__ has_uvd; } ;


 int cik_cp_enable (struct radeon_device*,int) ;
 int cik_fini_cg (struct radeon_device*) ;
 int cik_fini_pg (struct radeon_device*) ;
 int cik_irq_suspend (struct radeon_device*) ;
 int cik_pcie_gart_disable (struct radeon_device*) ;
 int cik_sdma_enable (struct radeon_device*,int) ;
 int radeon_audio_fini (struct radeon_device*) ;
 int radeon_pm_suspend (struct radeon_device*) ;
 int radeon_uvd_suspend (struct radeon_device*) ;
 int radeon_vce_suspend (struct radeon_device*) ;
 int radeon_vm_manager_fini (struct radeon_device*) ;
 int radeon_wb_disable (struct radeon_device*) ;
 int uvd_v1_0_fini (struct radeon_device*) ;

int cik_suspend(struct radeon_device *rdev)
{
 radeon_pm_suspend(rdev);
 radeon_audio_fini(rdev);
 radeon_vm_manager_fini(rdev);
 cik_cp_enable(rdev, 0);
 cik_sdma_enable(rdev, 0);
 if (rdev->has_uvd) {
  uvd_v1_0_fini(rdev);
  radeon_uvd_suspend(rdev);
 }
 if (rdev->has_vce)
  radeon_vce_suspend(rdev);
 cik_fini_pg(rdev);
 cik_fini_cg(rdev);
 cik_irq_suspend(rdev);
 radeon_wb_disable(rdev);
 cik_pcie_gart_disable(rdev);
 return 0;
}
