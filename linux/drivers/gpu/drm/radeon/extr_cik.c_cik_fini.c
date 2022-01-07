
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int * bios; } ;


 int cik_cp_fini (struct radeon_device*) ;
 int cik_fini_cg (struct radeon_device*) ;
 int cik_fini_pg (struct radeon_device*) ;
 int cik_irq_fini (struct radeon_device*) ;
 int cik_mec_fini (struct radeon_device*) ;
 int cik_pcie_gart_fini (struct radeon_device*) ;
 int cik_sdma_fini (struct radeon_device*) ;
 int kfree (int *) ;
 int r600_vram_scratch_fini (struct radeon_device*) ;
 int radeon_atombios_fini (struct radeon_device*) ;
 int radeon_bo_fini (struct radeon_device*) ;
 int radeon_fence_driver_fini (struct radeon_device*) ;
 int radeon_gem_fini (struct radeon_device*) ;
 int radeon_ib_pool_fini (struct radeon_device*) ;
 int radeon_irq_kms_fini (struct radeon_device*) ;
 int radeon_pm_fini (struct radeon_device*) ;
 int radeon_uvd_fini (struct radeon_device*) ;
 int radeon_vce_fini (struct radeon_device*) ;
 int radeon_vm_manager_fini (struct radeon_device*) ;
 int radeon_wb_fini (struct radeon_device*) ;
 int sumo_rlc_fini (struct radeon_device*) ;
 int uvd_v1_0_fini (struct radeon_device*) ;

void cik_fini(struct radeon_device *rdev)
{
 radeon_pm_fini(rdev);
 cik_cp_fini(rdev);
 cik_sdma_fini(rdev);
 cik_fini_pg(rdev);
 cik_fini_cg(rdev);
 cik_irq_fini(rdev);
 sumo_rlc_fini(rdev);
 cik_mec_fini(rdev);
 radeon_wb_fini(rdev);
 radeon_vm_manager_fini(rdev);
 radeon_ib_pool_fini(rdev);
 radeon_irq_kms_fini(rdev);
 uvd_v1_0_fini(rdev);
 radeon_uvd_fini(rdev);
 radeon_vce_fini(rdev);
 cik_pcie_gart_fini(rdev);
 r600_vram_scratch_fini(rdev);
 radeon_gem_fini(rdev);
 radeon_fence_driver_fini(rdev);
 radeon_bo_fini(rdev);
 radeon_atombios_fini(rdev);
 kfree(rdev->bios);
 rdev->bios = ((void*)0);
}
