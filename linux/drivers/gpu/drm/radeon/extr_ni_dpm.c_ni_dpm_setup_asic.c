
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct evergreen_power_info {scalar_t__ pcie_performance_request; } ;


 int DRM_ERROR (char*) ;
 int btc_read_arb_registers (struct radeon_device*) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 int ni_advertise_gen2_capability (struct radeon_device*) ;
 int ni_mc_load_microcode (struct radeon_device*) ;
 int ni_read_clock_registers (struct radeon_device*) ;
 int rv770_enable_acpi_pm (struct radeon_device*) ;
 int rv770_get_memory_type (struct radeon_device*) ;
 int rv770_get_pcie_gen2_status (struct radeon_device*) ;

void ni_dpm_setup_asic(struct radeon_device *rdev)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 int r;

 r = ni_mc_load_microcode(rdev);
 if (r)
  DRM_ERROR("Failed to load MC firmware!\n");
 ni_read_clock_registers(rdev);
 btc_read_arb_registers(rdev);
 rv770_get_memory_type(rdev);
 if (eg_pi->pcie_performance_request)
  ni_advertise_gen2_capability(rdev);
 rv770_get_pcie_gen2_status(rdev);
 rv770_enable_acpi_pm(rdev);
}
