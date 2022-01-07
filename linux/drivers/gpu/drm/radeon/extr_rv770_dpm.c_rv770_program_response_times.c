
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


 int RV770_SMC_SOFT_REGISTER_baby_step_timer ;
 int RV770_SMC_SOFT_REGISTER_delay_acpi ;
 int RV770_SMC_SOFT_REGISTER_delay_bbias ;
 int RV770_SMC_SOFT_REGISTER_delay_vreg ;
 int RV770_SMC_SOFT_REGISTER_mclk_chg_timeout ;
 scalar_t__ WEKIVA_A21 ;
 int radeon_get_xclk (struct radeon_device*) ;
 int rv770_write_smc_soft_register (struct radeon_device*,int ,int) ;

void rv770_program_response_times(struct radeon_device *rdev)
{
 u32 voltage_response_time, backbias_response_time;
 u32 acpi_delay_time, vbi_time_out;
 u32 vddc_dly, bb_dly, acpi_dly, vbi_dly;
 u32 reference_clock;

 voltage_response_time = (u32)rdev->pm.dpm.voltage_response_time;
 backbias_response_time = (u32)rdev->pm.dpm.backbias_response_time;

 if (voltage_response_time == 0)
  voltage_response_time = 1000;

 if (backbias_response_time == 0)
  backbias_response_time = 1000;

 acpi_delay_time = 15000;
 vbi_time_out = 100000;

 reference_clock = radeon_get_xclk(rdev);

 vddc_dly = (voltage_response_time * reference_clock) / 1600;
 bb_dly = (backbias_response_time * reference_clock) / 1600;
 acpi_dly = (acpi_delay_time * reference_clock) / 1600;
 vbi_dly = (vbi_time_out * reference_clock) / 1600;

 rv770_write_smc_soft_register(rdev,
          RV770_SMC_SOFT_REGISTER_delay_vreg, vddc_dly);
 rv770_write_smc_soft_register(rdev,
          RV770_SMC_SOFT_REGISTER_delay_bbias, bb_dly);
 rv770_write_smc_soft_register(rdev,
          RV770_SMC_SOFT_REGISTER_delay_acpi, acpi_dly);
 rv770_write_smc_soft_register(rdev,
          RV770_SMC_SOFT_REGISTER_mclk_chg_timeout, vbi_dly);







}
