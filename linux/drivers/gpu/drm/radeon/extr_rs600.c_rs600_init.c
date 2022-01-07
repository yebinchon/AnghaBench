
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int accel_working; int dev; int ddev; scalar_t__ is_atom_bios; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 int EINVAL ;
 int RREG32 (int ) ;
 int R_0007C0_CP_STAT ;
 int R_000E40_RBBM_STATUS ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,int ,int ) ;
 int r100_cp_fini (struct radeon_device*) ;
 int r100_restore_sanity (struct radeon_device*) ;
 scalar_t__ radeon_asic_reset (struct radeon_device*) ;
 int radeon_atombios_init (struct radeon_device*) ;
 int radeon_bo_init (struct radeon_device*) ;
 int radeon_boot_test_post_card (struct radeon_device*) ;
 int radeon_fence_driver_init (struct radeon_device*) ;
 int radeon_get_bios (struct radeon_device*) ;
 int radeon_get_clock_info (int ) ;
 int radeon_ib_pool_fini (struct radeon_device*) ;
 int radeon_irq_kms_fini (struct radeon_device*) ;
 int radeon_pm_init (struct radeon_device*) ;
 int radeon_scratch_init (struct radeon_device*) ;
 int radeon_surface_init (struct radeon_device*) ;
 int radeon_wb_fini (struct radeon_device*) ;
 int rs600_debugfs (struct radeon_device*) ;
 int rs600_gart_fini (struct radeon_device*) ;
 int rs600_gart_init (struct radeon_device*) ;
 int rs600_mc_init (struct radeon_device*) ;
 int rs600_set_safe_registers (struct radeon_device*) ;
 int rs600_startup (struct radeon_device*) ;
 int rv515_vga_render_disable (struct radeon_device*) ;

int rs600_init(struct radeon_device *rdev)
{
 int r;


 rv515_vga_render_disable(rdev);

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
  dev_err(rdev->dev, "Expecting atombios for RS600 GPU\n");
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


 radeon_get_clock_info(rdev->ddev);

 rs600_mc_init(rdev);
 rs600_debugfs(rdev);

 r = radeon_fence_driver_init(rdev);
 if (r)
  return r;

 r = radeon_bo_init(rdev);
 if (r)
  return r;
 r = rs600_gart_init(rdev);
 if (r)
  return r;
 rs600_set_safe_registers(rdev);


 radeon_pm_init(rdev);

 rdev->accel_working = 1;
 r = rs600_startup(rdev);
 if (r) {

  dev_err(rdev->dev, "Disabling GPU acceleration\n");
  r100_cp_fini(rdev);
  radeon_wb_fini(rdev);
  radeon_ib_pool_fini(rdev);
  rs600_gart_fini(rdev);
  radeon_irq_kms_fini(rdev);
  rdev->accel_working = 0;
 }
 return 0;
}
