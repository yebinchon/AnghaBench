
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct ni_ps {int performance_level_count; TYPE_1__* performance_levels; } ;
struct ni_power_info {int enable_power_containment; } ;
struct evergreen_power_info {int vddc_voltage_table; } ;
struct TYPE_9__ {int levelCount; TYPE_3__* levels; } ;
struct TYPE_7__ {int PwrEfficiencyRatio; int BelowSafeInc; int AboveSafeInc; int NearTDPDec; scalar_t__ MaxPS; } ;
struct TYPE_8__ {TYPE_2__ dpm2; } ;
struct TYPE_6__ {int sclk; int vddc; } ;
typedef int SISLANDS_SMC_VOLTAGE_VALUE ;
typedef TYPE_4__ SISLANDS_SMC_SWSTATE ;


 int EINVAL ;
 int SISLANDS_DPM2_ABOVE_SAFE_INC ;
 int SISLANDS_DPM2_BELOW_SAFE_INC ;
 scalar_t__ SISLANDS_DPM2_MAXPS_PERCENT_H ;
 scalar_t__ SISLANDS_DPM2_MAXPS_PERCENT_M ;
 int SISLANDS_DPM2_MAX_PULSE_SKIP ;
 int SISLANDS_DPM2_NEAR_TDP_DEC ;
 int cpu_to_be16 (int ) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 struct ni_power_info* ni_get_pi (struct radeon_device*) ;
 struct ni_ps* ni_get_ps (struct radeon_ps*) ;
 int si_calculate_power_efficiency_ratio (struct radeon_device*,int ,int ) ;
 int si_get_std_voltage_value (struct radeon_device*,int *,int *) ;
 int si_populate_voltage_value (struct radeon_device*,int *,int ,int *) ;
 int si_should_disable_uvd_powertune (struct radeon_device*,struct radeon_ps*) ;

__attribute__((used)) static int si_populate_power_containment_values(struct radeon_device *rdev,
      struct radeon_ps *radeon_state,
      SISLANDS_SMC_SWSTATE *smc_state)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct ni_power_info *ni_pi = ni_get_pi(rdev);
 struct ni_ps *state = ni_get_ps(radeon_state);
 SISLANDS_SMC_VOLTAGE_VALUE vddc;
 u32 prev_sclk;
 u32 max_sclk;
 u32 min_sclk;
 u16 prev_std_vddc;
 u16 curr_std_vddc;
 int i;
 u16 pwr_efficiency_ratio;
 u8 max_ps_percent;
 bool disable_uvd_power_tune;
 int ret;

 if (ni_pi->enable_power_containment == 0)
  return 0;

 if (state->performance_level_count == 0)
  return -EINVAL;

 if (smc_state->levelCount != state->performance_level_count)
  return -EINVAL;

 disable_uvd_power_tune = si_should_disable_uvd_powertune(rdev, radeon_state);

 smc_state->levels[0].dpm2.MaxPS = 0;
 smc_state->levels[0].dpm2.NearTDPDec = 0;
 smc_state->levels[0].dpm2.AboveSafeInc = 0;
 smc_state->levels[0].dpm2.BelowSafeInc = 0;
 smc_state->levels[0].dpm2.PwrEfficiencyRatio = 0;

 for (i = 1; i < state->performance_level_count; i++) {
  prev_sclk = state->performance_levels[i-1].sclk;
  max_sclk = state->performance_levels[i].sclk;
  if (i == 1)
   max_ps_percent = SISLANDS_DPM2_MAXPS_PERCENT_M;
  else
   max_ps_percent = SISLANDS_DPM2_MAXPS_PERCENT_H;

  if (prev_sclk > max_sclk)
   return -EINVAL;

  if ((max_ps_percent == 0) ||
      (prev_sclk == max_sclk) ||
      disable_uvd_power_tune) {
   min_sclk = max_sclk;
  } else if (i == 1) {
   min_sclk = prev_sclk;
  } else {
   min_sclk = (prev_sclk * (u32)max_ps_percent) / 100;
  }

  if (min_sclk < state->performance_levels[0].sclk)
   min_sclk = state->performance_levels[0].sclk;

  if (min_sclk == 0)
   return -EINVAL;

  ret = si_populate_voltage_value(rdev, &eg_pi->vddc_voltage_table,
      state->performance_levels[i-1].vddc, &vddc);
  if (ret)
   return ret;

  ret = si_get_std_voltage_value(rdev, &vddc, &prev_std_vddc);
  if (ret)
   return ret;

  ret = si_populate_voltage_value(rdev, &eg_pi->vddc_voltage_table,
      state->performance_levels[i].vddc, &vddc);
  if (ret)
   return ret;

  ret = si_get_std_voltage_value(rdev, &vddc, &curr_std_vddc);
  if (ret)
   return ret;

  pwr_efficiency_ratio = si_calculate_power_efficiency_ratio(rdev,
            prev_std_vddc, curr_std_vddc);

  smc_state->levels[i].dpm2.MaxPS = (u8)((SISLANDS_DPM2_MAX_PULSE_SKIP * (max_sclk - min_sclk)) / max_sclk);
  smc_state->levels[i].dpm2.NearTDPDec = SISLANDS_DPM2_NEAR_TDP_DEC;
  smc_state->levels[i].dpm2.AboveSafeInc = SISLANDS_DPM2_ABOVE_SAFE_INC;
  smc_state->levels[i].dpm2.BelowSafeInc = SISLANDS_DPM2_BELOW_SAFE_INC;
  smc_state->levels[i].dpm2.PwrEfficiencyRatio = cpu_to_be16(pwr_efficiency_ratio);
 }

 return 0;
}
