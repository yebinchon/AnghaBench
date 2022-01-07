
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int si_enable_acpi_power_management (struct amdgpu_device*) ;
 int si_read_clock_registers (struct amdgpu_device*) ;

__attribute__((used)) static void si_dpm_setup_asic(struct amdgpu_device *adev)
{
 si_read_clock_registers(adev);
 si_enable_acpi_power_management(adev);
}
