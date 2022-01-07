
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smu7_power_state {int dummy; } ;
struct TYPE_4__ {int pcie_speed_table; int mclk_table; int sclk_table; } ;
struct TYPE_3__ {void* pcie_dpm_enable_mask; void* mclk_dpm_enable_mask; void* sclk_dpm_enable_mask; } ;
struct smu7_hwmgr {TYPE_2__ dpm_table; TYPE_1__ dpm_level_enable_mask; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct phm_set_power_state_input {int pnew_state; } ;


 struct smu7_power_state* cast_const_phw_smu7_power_state (int ) ;
 void* phm_get_dpm_level_enable_mask_value (int *) ;
 int smu7_trim_dpm_states (struct pp_hwmgr*,struct smu7_power_state const*) ;

__attribute__((used)) static int smu7_generate_dpm_level_enable_mask(
  struct pp_hwmgr *hwmgr, const void *input)
{
 int result = 0;
 const struct phm_set_power_state_input *states =
   (const struct phm_set_power_state_input *)input;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 const struct smu7_power_state *smu7_ps =
   cast_const_phw_smu7_power_state(states->pnew_state);


 result = smu7_trim_dpm_states(hwmgr, smu7_ps);
 if (result)
  return result;

 data->dpm_level_enable_mask.sclk_dpm_enable_mask =
   phm_get_dpm_level_enable_mask_value(&data->dpm_table.sclk_table);
 data->dpm_level_enable_mask.mclk_dpm_enable_mask =
   phm_get_dpm_level_enable_mask_value(&data->dpm_table.mclk_table);
 data->dpm_level_enable_mask.pcie_dpm_enable_mask =
   phm_get_dpm_level_enable_mask_value(&data->dpm_table.pcie_speed_table);

 return 0;
}
