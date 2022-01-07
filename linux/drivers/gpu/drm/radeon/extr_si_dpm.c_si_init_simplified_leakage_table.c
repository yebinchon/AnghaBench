
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef unsigned int u16 ;
struct TYPE_6__ {int cac_leakage; } ;
struct si_power_info {TYPE_2__ dyn_powertune_data; TYPE_1__* powertune_data; } ;
struct radeon_device {int dummy; } ;
struct TYPE_7__ {int ** cac_lkge_lut; } ;
struct TYPE_5__ {int fixed_kt; int leakage_coefficients; } ;
typedef TYPE_3__ PP_SIslands_CacConfig ;


 unsigned int SMC_SISLANDS_LKGE_LUT_NUM_OF_TEMP_ENTRIES ;
 unsigned int SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES ;
 int cpu_to_be16 (unsigned int) ;
 int si_calculate_leakage_for_v (struct radeon_device*,int *,int ,unsigned int,int ,int*) ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;
 int si_get_smc_power_scaling_factor (struct radeon_device*) ;
 int si_scale_power_for_smc (int,int) ;

__attribute__((used)) static int si_init_simplified_leakage_table(struct radeon_device *rdev,
         PP_SIslands_CacConfig *cac_tables,
         u16 vddc_max, u16 vddc_min, u16 vddc_step)
{
 struct si_power_info *si_pi = si_get_pi(rdev);
 u32 leakage;
 unsigned int i, j;
 u32 smc_leakage;
 u32 scaling_factor;
 u16 voltage;

 scaling_factor = si_get_smc_power_scaling_factor(rdev);

 for (j = 0; j < SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES; j++) {
  voltage = vddc_max - (vddc_step * j);

  si_calculate_leakage_for_v(rdev,
        &si_pi->powertune_data->leakage_coefficients,
        si_pi->powertune_data->fixed_kt,
        voltage,
        si_pi->dyn_powertune_data.cac_leakage,
        &leakage);

  smc_leakage = si_scale_power_for_smc(leakage, scaling_factor) / 4;

  if (smc_leakage > 0xFFFF)
   smc_leakage = 0xFFFF;

  for (i = 0; i < SMC_SISLANDS_LKGE_LUT_NUM_OF_TEMP_ENTRIES ; i++)
   cac_tables->cac_lkge_lut[i][SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES-1-j] =
    cpu_to_be16((u16)smc_leakage);
 }
 return 0;
}
