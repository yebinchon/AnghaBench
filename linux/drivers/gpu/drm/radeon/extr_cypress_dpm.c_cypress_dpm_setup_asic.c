
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct evergreen_power_info {int pcie_performance_request_registered; scalar_t__ pcie_performance_request; } ;


 int cypress_advertise_gen2_capability (struct radeon_device*) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 int rv740_read_clock_registers (struct radeon_device*) ;
 int rv770_enable_acpi_pm (struct radeon_device*) ;
 int rv770_get_max_vddc (struct radeon_device*) ;
 int rv770_get_memory_type (struct radeon_device*) ;
 int rv770_get_pcie_gen2_status (struct radeon_device*) ;
 int rv770_read_voltage_smio_registers (struct radeon_device*) ;

void cypress_dpm_setup_asic(struct radeon_device *rdev)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);

 rv740_read_clock_registers(rdev);
 rv770_read_voltage_smio_registers(rdev);
 rv770_get_max_vddc(rdev);
 rv770_get_memory_type(rdev);

 if (eg_pi->pcie_performance_request)
  eg_pi->pcie_performance_request_registered = 0;

 if (eg_pi->pcie_performance_request)
  cypress_advertise_gen2_capability(rdev);

 rv770_get_pcie_gen2_status(rdev);

 rv770_enable_acpi_pm(rdev);
}
