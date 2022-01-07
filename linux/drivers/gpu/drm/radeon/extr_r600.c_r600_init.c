
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * ring_obj; } ;
struct TYPE_4__ {int atom_context; } ;
struct radeon_device {int flags; int accel_working; int dev; TYPE_2__ ih; TYPE_3__* ring; int rlc_fw; int pfp_fw; int me_fw; int ddev; TYPE_1__ mode_info; int bios; int is_atom_bios; } ;
struct TYPE_6__ {int * ring_obj; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 int DRM_ERROR (char*) ;
 int DRM_INFO (char*) ;
 int EINVAL ;
 int RADEON_IS_AGP ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int atom_asic_init (int ) ;
 int dev_err (int ,char*) ;
 int r600_cp_fini (struct radeon_device*) ;
 scalar_t__ r600_debugfs_mc_info_init (struct radeon_device*) ;
 int r600_ih_ring_init (struct radeon_device*,int) ;
 int r600_init_microcode (struct radeon_device*) ;
 int r600_irq_fini (struct radeon_device*) ;
 int r600_mc_init (struct radeon_device*) ;
 int r600_pcie_gart_fini (struct radeon_device*) ;
 int r600_pcie_gart_init (struct radeon_device*) ;
 int r600_ring_init (struct radeon_device*,TYPE_3__*,int) ;
 int r600_scratch_init (struct radeon_device*) ;
 int r600_startup (struct radeon_device*) ;
 int r600_uvd_init (struct radeon_device*) ;
 int radeon_agp_disable (struct radeon_device*) ;
 int radeon_agp_init (struct radeon_device*) ;
 int radeon_atombios_init (struct radeon_device*) ;
 int radeon_bo_init (struct radeon_device*) ;
 int radeon_card_posted (struct radeon_device*) ;
 int radeon_fence_driver_init (struct radeon_device*) ;
 int radeon_get_bios (struct radeon_device*) ;
 int radeon_get_clock_info (int ) ;
 int radeon_ib_pool_fini (struct radeon_device*) ;
 int radeon_irq_kms_fini (struct radeon_device*) ;
 int radeon_pm_init (struct radeon_device*) ;
 int radeon_surface_init (struct radeon_device*) ;
 int radeon_wb_fini (struct radeon_device*) ;

int r600_init(struct radeon_device *rdev)
{
 int r;

 if (r600_debugfs_mc_info_init(rdev)) {
  DRM_ERROR("Failed to register debugfs file for mc !\n");
 }

 if (!radeon_get_bios(rdev)) {
  if (ASIC_IS_AVIVO(rdev))
   return -EINVAL;
 }

 if (!rdev->is_atom_bios) {
  dev_err(rdev->dev, "Expecting atombios for R600 GPU\n");
  return -EINVAL;
 }
 r = radeon_atombios_init(rdev);
 if (r)
  return r;

 if (!radeon_card_posted(rdev)) {
  if (!rdev->bios) {
   dev_err(rdev->dev, "Card not posted and no BIOS - ignoring\n");
   return -EINVAL;
  }
  DRM_INFO("GPU not posted. posting now...\n");
  atom_asic_init(rdev->mode_info.atom_context);
 }

 r600_scratch_init(rdev);

 radeon_surface_init(rdev);

 radeon_get_clock_info(rdev->ddev);

 r = radeon_fence_driver_init(rdev);
 if (r)
  return r;
 if (rdev->flags & RADEON_IS_AGP) {
  r = radeon_agp_init(rdev);
  if (r)
   radeon_agp_disable(rdev);
 }
 r = r600_mc_init(rdev);
 if (r)
  return r;

 r = radeon_bo_init(rdev);
 if (r)
  return r;

 if (!rdev->me_fw || !rdev->pfp_fw || !rdev->rlc_fw) {
  r = r600_init_microcode(rdev);
  if (r) {
   DRM_ERROR("Failed to load firmware!\n");
   return r;
  }
 }


 radeon_pm_init(rdev);

 rdev->ring[RADEON_RING_TYPE_GFX_INDEX].ring_obj = ((void*)0);
 r600_ring_init(rdev, &rdev->ring[RADEON_RING_TYPE_GFX_INDEX], 1024 * 1024);

 r600_uvd_init(rdev);

 rdev->ih.ring_obj = ((void*)0);
 r600_ih_ring_init(rdev, 64 * 1024);

 r = r600_pcie_gart_init(rdev);
 if (r)
  return r;

 rdev->accel_working = 1;
 r = r600_startup(rdev);
 if (r) {
  dev_err(rdev->dev, "disabling GPU acceleration\n");
  r600_cp_fini(rdev);
  r600_irq_fini(rdev);
  radeon_wb_fini(rdev);
  radeon_ib_pool_fini(rdev);
  radeon_irq_kms_fini(rdev);
  r600_pcie_gart_fini(rdev);
  rdev->accel_working = 0;
 }

 return 0;
}
