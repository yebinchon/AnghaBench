
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sumo_power_info {int fw_version; } ;
struct radeon_device {int dummy; } ;


 int DRM_INFO (char*,int ) ;
 int sumo_enable_acpi_pm (struct radeon_device*) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;
 int sumo_get_running_fw_version (struct radeon_device*) ;
 int sumo_initialize_m3_arb (struct radeon_device*) ;
 int sumo_program_acpi_power_level (struct radeon_device*) ;
 int sumo_take_smu_control (struct radeon_device*,int) ;

void sumo_dpm_setup_asic(struct radeon_device *rdev)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);

 sumo_initialize_m3_arb(rdev);
 pi->fw_version = sumo_get_running_fw_version(rdev);
 DRM_INFO("Found smc ucode version: 0x%08x\n", pi->fw_version);
 sumo_program_acpi_power_level(rdev);
 sumo_enable_acpi_pm(rdev);
 sumo_take_smu_control(rdev, 1);
}
