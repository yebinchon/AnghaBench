
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {scalar_t__ pstate_sclk; int const dpm_level; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;
 int PP_MCLK ;
 int PP_PCIE ;
 int PP_SCLK ;
 int smu7_fan_ctrl_reset_fan_speed_to_default (struct pp_hwmgr*) ;
 int smu7_fan_ctrl_set_fan_speed_percent (struct pp_hwmgr*,int) ;
 int smu7_force_clock_level (struct pp_hwmgr*,int ,int) ;
 int smu7_force_dpm_highest (struct pp_hwmgr*) ;
 int smu7_force_dpm_lowest (struct pp_hwmgr*) ;
 int smu7_get_profiling_clk (struct pp_hwmgr*,int,int*,int*,int*) ;
 int smu7_unforce_dpm_levels (struct pp_hwmgr*) ;

__attribute__((used)) static int smu7_force_dpm_level(struct pp_hwmgr *hwmgr,
    enum amd_dpm_forced_level level)
{
 int ret = 0;
 uint32_t sclk_mask = 0;
 uint32_t mclk_mask = 0;
 uint32_t pcie_mask = 0;

 if (hwmgr->pstate_sclk == 0)
  smu7_get_profiling_clk(hwmgr, level, &sclk_mask, &mclk_mask, &pcie_mask);

 switch (level) {
 case 135:
  ret = smu7_force_dpm_highest(hwmgr);
  break;
 case 134:
  ret = smu7_force_dpm_lowest(hwmgr);
  break;
 case 136:
  ret = smu7_unforce_dpm_levels(hwmgr);
  break;
 case 128:
 case 130:
 case 131:
 case 129:
  ret = smu7_get_profiling_clk(hwmgr, level, &sclk_mask, &mclk_mask, &pcie_mask);
  if (ret)
   return ret;
  smu7_force_clock_level(hwmgr, PP_SCLK, 1<<sclk_mask);
  smu7_force_clock_level(hwmgr, PP_MCLK, 1<<mclk_mask);
  smu7_force_clock_level(hwmgr, PP_PCIE, 1<<pcie_mask);
  break;
 case 133:
 case 132:
 default:
  break;
 }

 if (!ret) {
  if (level == 129 && hwmgr->dpm_level != 129)
   smu7_fan_ctrl_set_fan_speed_percent(hwmgr, 100);
  else if (level != 129 && hwmgr->dpm_level == 129)
   smu7_fan_ctrl_reset_fan_speed_to_default(hwmgr);
 }
 return ret;
}
