
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;
 int PP_MCLK ;
 int PP_SCLK ;
 int vega12_force_clock_level (struct pp_hwmgr*,int ,int) ;
 int vega12_force_dpm_highest (struct pp_hwmgr*) ;
 int vega12_force_dpm_lowest (struct pp_hwmgr*) ;
 int vega12_get_profiling_clk_mask (struct pp_hwmgr*,int,int*,int*,int*) ;
 int vega12_unforce_dpm_levels (struct pp_hwmgr*) ;

__attribute__((used)) static int vega12_dpm_force_dpm_level(struct pp_hwmgr *hwmgr,
    enum amd_dpm_forced_level level)
{
 int ret = 0;
 uint32_t sclk_mask = 0;
 uint32_t mclk_mask = 0;
 uint32_t soc_mask = 0;

 switch (level) {
 case 135:
  ret = vega12_force_dpm_highest(hwmgr);
  break;
 case 134:
  ret = vega12_force_dpm_lowest(hwmgr);
  break;
 case 136:
  ret = vega12_unforce_dpm_levels(hwmgr);
  break;
 case 128:
 case 130:
 case 131:
 case 129:
  ret = vega12_get_profiling_clk_mask(hwmgr, level, &sclk_mask, &mclk_mask, &soc_mask);
  if (ret)
   return ret;
  vega12_force_clock_level(hwmgr, PP_SCLK, 1 << sclk_mask);
  vega12_force_clock_level(hwmgr, PP_MCLK, 1 << mclk_mask);
  break;
 case 133:
 case 132:
 default:
  break;
 }

 return ret;
}
