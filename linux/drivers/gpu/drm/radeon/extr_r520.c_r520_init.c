
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int atom_context; } ;
struct radeon_device {int flags; int accel_working; int dev; int ddev; TYPE_1__ mode_info; scalar_t__ bios; scalar_t__ is_atom_bios; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 int DRM_INFO (char*) ;
 int EINVAL ;
 int RADEON_IS_AGP ;
 int RREG32 (int ) ;
 int R_0007C0_CP_STAT ;
 int R_000E40_RBBM_STATUS ;
 int atom_asic_init (int ) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,int ,int ) ;
 int r100_cp_fini (struct radeon_device*) ;
 int r100_restore_sanity (struct radeon_device*) ;
 int r520_mc_init (struct radeon_device*) ;
 int r520_startup (struct radeon_device*) ;
 int radeon_agp_disable (struct radeon_device*) ;
 int radeon_agp_fini (struct radeon_device*) ;
 int radeon_agp_init (struct radeon_device*) ;
 scalar_t__ radeon_asic_reset (struct radeon_device*) ;
 int radeon_atombios_init (struct radeon_device*) ;
 int radeon_bo_init (struct radeon_device*) ;
 int radeon_boot_test_post_card (struct radeon_device*) ;
 int radeon_card_posted (struct radeon_device*) ;
 int radeon_fence_driver_init (struct radeon_device*) ;
 int radeon_get_bios (struct radeon_device*) ;
 int radeon_get_clock_info (int ) ;
 int radeon_ib_pool_fini (struct radeon_device*) ;
 int radeon_irq_kms_fini (struct radeon_device*) ;
 int radeon_pm_init (struct radeon_device*) ;
 int radeon_scratch_init (struct radeon_device*) ;
 int radeon_surface_init (struct radeon_device*) ;
 int radeon_wb_fini (struct radeon_device*) ;
 int rv370_pcie_gart_fini (struct radeon_device*) ;
 int rv370_pcie_gart_init (struct radeon_device*) ;
 int rv515_debugfs (struct radeon_device*) ;
 int rv515_set_safe_registers (struct radeon_device*) ;

int r520_init(struct radeon_device *rdev)
{
 int r;


 radeon_scratch_init(rdev);

 radeon_surface_init(rdev);

 r100_restore_sanity(rdev);


 if (!radeon_get_bios(rdev)) {
  if (ASIC_IS_AVIVO(rdev))
   return -EINVAL;
 }
 if (rdev->is_atom_bios) {
  r = radeon_atombios_init(rdev);
  if (r)
   return r;
 } else {
  dev_err(rdev->dev, "Expecting atombios for RV515 GPU\n");
  return -EINVAL;
 }

 if (radeon_asic_reset(rdev)) {
  dev_warn(rdev->dev,
   "GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\n",
   RREG32(R_000E40_RBBM_STATUS),
   RREG32(R_0007C0_CP_STAT));
 }

 if (radeon_boot_test_post_card(rdev) == 0)
  return -EINVAL;

 if (!radeon_card_posted(rdev) && rdev->bios) {
  DRM_INFO("GPU not posted. posting now...\n");
  atom_asic_init(rdev->mode_info.atom_context);
 }

 radeon_get_clock_info(rdev->ddev);

 if (rdev->flags & RADEON_IS_AGP) {
  r = radeon_agp_init(rdev);
  if (r) {
   radeon_agp_disable(rdev);
  }
 }

 r520_mc_init(rdev);
 rv515_debugfs(rdev);

 r = radeon_fence_driver_init(rdev);
 if (r)
  return r;

 r = radeon_bo_init(rdev);
 if (r)
  return r;
 r = rv370_pcie_gart_init(rdev);
 if (r)
  return r;
 rv515_set_safe_registers(rdev);


 radeon_pm_init(rdev);

 rdev->accel_working = 1;
 r = r520_startup(rdev);
 if (r) {

  dev_err(rdev->dev, "Disabling GPU acceleration\n");
  r100_cp_fini(rdev);
  radeon_wb_fini(rdev);
  radeon_ib_pool_fini(rdev);
  radeon_irq_kms_fini(rdev);
  rv370_pcie_gart_fini(rdev);
  radeon_agp_fini(rdev);
  rdev->accel_working = 0;
 }
 return 0;
}
