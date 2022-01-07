
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ backbias_response_time; scalar_t__ voltage_response_time; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 int SI_SMC_SOFT_REGISTER_delay_acpi ;
 int SI_SMC_SOFT_REGISTER_delay_vreg ;
 int SI_SMC_SOFT_REGISTER_mc_block_delay ;
 int SI_SMC_SOFT_REGISTER_mclk_chg_timeout ;
 int SI_SMC_SOFT_REGISTER_mvdd_chg_time ;
 int radeon_get_xclk (struct radeon_device*) ;
 int si_write_smc_soft_register (struct radeon_device*,int ,int) ;

__attribute__((used)) static void si_program_response_times(struct radeon_device *rdev)
{
 u32 voltage_response_time, backbias_response_time, acpi_delay_time, vbi_time_out;
 u32 vddc_dly, acpi_dly, vbi_dly;
 u32 reference_clock;

 si_write_smc_soft_register(rdev, SI_SMC_SOFT_REGISTER_mvdd_chg_time, 1);

 voltage_response_time = (u32)rdev->pm.dpm.voltage_response_time;
 backbias_response_time = (u32)rdev->pm.dpm.backbias_response_time;

 if (voltage_response_time == 0)
  voltage_response_time = 1000;

 acpi_delay_time = 15000;
 vbi_time_out = 100000;

 reference_clock = radeon_get_xclk(rdev);

 vddc_dly = (voltage_response_time * reference_clock) / 100;
 acpi_dly = (acpi_delay_time * reference_clock) / 100;
 vbi_dly = (vbi_time_out * reference_clock) / 100;

 si_write_smc_soft_register(rdev, SI_SMC_SOFT_REGISTER_delay_vreg, vddc_dly);
 si_write_smc_soft_register(rdev, SI_SMC_SOFT_REGISTER_delay_acpi, acpi_dly);
 si_write_smc_soft_register(rdev, SI_SMC_SOFT_REGISTER_mclk_chg_timeout, vbi_dly);
 si_write_smc_soft_register(rdev, SI_SMC_SOFT_REGISTER_mc_block_delay, 0xAA);
}
