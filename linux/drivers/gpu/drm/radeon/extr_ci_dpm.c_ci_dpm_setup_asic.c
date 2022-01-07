
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int ci_enable_acpi_power_management (struct radeon_device*) ;
 int ci_get_memory_type (struct radeon_device*) ;
 int ci_init_sclk_t (struct radeon_device*) ;
 int ci_mc_load_microcode (struct radeon_device*) ;
 int ci_read_clock_registers (struct radeon_device*) ;

void ci_dpm_setup_asic(struct radeon_device *rdev)
{
 int r;

 r = ci_mc_load_microcode(rdev);
 if (r)
  DRM_ERROR("Failed to load MC firmware!\n");
 ci_read_clock_registers(rdev);
 ci_get_memory_type(rdev);
 ci_enable_acpi_power_management(rdev);
 ci_init_sclk_t(rdev);
}
