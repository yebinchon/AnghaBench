
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {scalar_t__ pstate_sclk; int const dpm_level; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;
 int AMD_FAN_CTRL_AUTO ;
 int AMD_FAN_CTRL_NONE ;
 int PP_MCLK ;
 int PP_SCLK ;
 int vega10_force_clock_level (struct pp_hwmgr*,int ,int) ;
 int vega10_force_dpm_highest (struct pp_hwmgr*) ;
 int vega10_force_dpm_lowest (struct pp_hwmgr*) ;
 int vega10_get_profiling_clk_mask (struct pp_hwmgr*,int,int*,int*,int*) ;
 int vega10_set_fan_control_mode (struct pp_hwmgr*,int ) ;
 int vega10_unforce_dpm_levels (struct pp_hwmgr*) ;

__attribute__((used)) static int vega10_dpm_force_dpm_level(struct pp_hwmgr *hwmgr,
    enum amd_dpm_forced_level level)
{
 int ret = 0;
 uint32_t sclk_mask = 0;
 uint32_t mclk_mask = 0;
 uint32_t soc_mask = 0;

 if (hwmgr->pstate_sclk == 0)
  vega10_get_profiling_clk_mask(hwmgr, level, &sclk_mask, &mclk_mask, &soc_mask);

 switch (level) {
 case 135:
  ret = vega10_force_dpm_highest(hwmgr);
  break;
 case 134:
  ret = vega10_force_dpm_lowest(hwmgr);
  break;
 case 136:
  ret = vega10_unforce_dpm_levels(hwmgr);
  break;
 case 128:
 case 130:
 case 131:
 case 129:
  ret = vega10_get_profiling_clk_mask(hwmgr, level, &sclk_mask, &mclk_mask, &soc_mask);
  if (ret)
   return ret;
  vega10_force_clock_level(hwmgr, PP_SCLK, 1<<sclk_mask);
  vega10_force_clock_level(hwmgr, PP_MCLK, 1<<mclk_mask);
  break;
 case 133:
 case 132:
 default:
  break;
 }

 if (!ret) {
  if (level == 129 && hwmgr->dpm_level != 129)
   vega10_set_fan_control_mode(hwmgr, AMD_FAN_CTRL_NONE);
  else if (level != 129 && hwmgr->dpm_level == 129)
   vega10_set_fan_control_mode(hwmgr, AMD_FAN_CTRL_AUTO);
 }

 return ret;
}
