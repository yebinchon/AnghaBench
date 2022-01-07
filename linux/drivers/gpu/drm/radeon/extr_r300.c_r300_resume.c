
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int flags; int accel_working; int ddev; int dev; } ;


 int RADEON_IS_PCI ;
 int RADEON_IS_PCIE ;
 int RREG32 (int ) ;
 int R_0007C0_CP_STAT ;
 int R_000E40_RBBM_STATUS ;
 int dev_warn (int ,char*,int ,int ) ;
 int r100_pci_gart_disable (struct radeon_device*) ;
 int r300_clock_startup (struct radeon_device*) ;
 int r300_startup (struct radeon_device*) ;
 scalar_t__ radeon_asic_reset (struct radeon_device*) ;
 int radeon_combios_asic_init (int ) ;
 int radeon_surface_init (struct radeon_device*) ;
 int rv370_pcie_gart_disable (struct radeon_device*) ;

int r300_resume(struct radeon_device *rdev)
{
 int r;


 if (rdev->flags & RADEON_IS_PCIE)
  rv370_pcie_gart_disable(rdev);
 if (rdev->flags & RADEON_IS_PCI)
  r100_pci_gart_disable(rdev);

 r300_clock_startup(rdev);

 if (radeon_asic_reset(rdev)) {
  dev_warn(rdev->dev, "GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\n",
   RREG32(R_000E40_RBBM_STATUS),
   RREG32(R_0007C0_CP_STAT));
 }

 radeon_combios_asic_init(rdev->ddev);

 r300_clock_startup(rdev);

 radeon_surface_init(rdev);

 rdev->accel_working = 1;
 r = r300_startup(rdev);
 if (r) {
  rdev->accel_working = 0;
 }
 return r;
}
