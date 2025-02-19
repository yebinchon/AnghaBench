
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int platform_caps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 int ATOM_PP_PLATFORM_CAP_ASPM_L0s ;
 int ATOM_PP_PLATFORM_CAP_ASPM_L1 ;
 int ATOM_PP_PLATFORM_CAP_TURNOFFPLL_ASPML1 ;
 int r600_enable_acpi_pm (struct radeon_device*) ;
 scalar_t__ radeon_aspm ;
 int rv6xx_enable_l0s (struct radeon_device*) ;
 int rv6xx_enable_l1 (struct radeon_device*) ;
 int rv6xx_enable_pll_sleep_in_l1 (struct radeon_device*) ;

void rv6xx_setup_asic(struct radeon_device *rdev)
{
 r600_enable_acpi_pm(rdev);

 if (radeon_aspm != 0) {
  if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_ASPM_L0s)
   rv6xx_enable_l0s(rdev);
  if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_ASPM_L1)
   rv6xx_enable_l1(rdev);
  if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_TURNOFFPLL_ASPML1)
   rv6xx_enable_pll_sleep_in_l1(rdev);
 }
}
