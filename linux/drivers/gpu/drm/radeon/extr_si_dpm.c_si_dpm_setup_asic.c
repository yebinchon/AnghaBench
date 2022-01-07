
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int rv770_get_memory_type (struct radeon_device*) ;
 int si_enable_acpi_power_management (struct radeon_device*) ;
 int si_mc_load_microcode (struct radeon_device*) ;
 int si_read_clock_registers (struct radeon_device*) ;

void si_dpm_setup_asic(struct radeon_device *rdev)
{
 int r;

 r = si_mc_load_microcode(rdev);
 if (r)
  DRM_ERROR("Failed to load MC firmware!\n");
 rv770_get_memory_type(rdev);
 si_read_clock_registers(rdev);
 si_enable_acpi_power_management(rdev);
}
