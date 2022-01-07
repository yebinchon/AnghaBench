
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int flags; int * bios; scalar_t__ has_vce; } ;


 int RADEON_IS_IGP ;
 int cayman_cp_fini (struct radeon_device*) ;
 int cayman_dma_fini (struct radeon_device*) ;
 int cayman_pcie_gart_fini (struct radeon_device*) ;
 int kfree (int *) ;
 int r600_irq_fini (struct radeon_device*) ;
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

void cayman_fini(struct radeon_device *rdev)
{
 radeon_pm_fini(rdev);
 cayman_cp_fini(rdev);
 cayman_dma_fini(rdev);
 r600_irq_fini(rdev);
 if (rdev->flags & RADEON_IS_IGP)
  sumo_rlc_fini(rdev);
 radeon_wb_fini(rdev);
 radeon_vm_manager_fini(rdev);
 radeon_ib_pool_fini(rdev);
 radeon_irq_kms_fini(rdev);
 uvd_v1_0_fini(rdev);
 radeon_uvd_fini(rdev);
 if (rdev->has_vce)
  radeon_vce_fini(rdev);
 cayman_pcie_gart_fini(rdev);
 r600_vram_scratch_fini(rdev);
 radeon_gem_fini(rdev);
 radeon_fence_driver_fini(rdev);
 radeon_bo_fini(rdev);
 radeon_atombios_fini(rdev);
 kfree(rdev->bios);
 rdev->bios = ((void*)0);
}
