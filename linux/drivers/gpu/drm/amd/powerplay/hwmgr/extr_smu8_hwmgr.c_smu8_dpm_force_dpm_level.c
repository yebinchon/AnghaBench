
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;
 int smu8_phm_force_dpm_highest (struct pp_hwmgr*) ;
 int smu8_phm_force_dpm_lowest (struct pp_hwmgr*) ;
 int smu8_phm_unforce_dpm_levels (struct pp_hwmgr*) ;

__attribute__((used)) static int smu8_dpm_force_dpm_level(struct pp_hwmgr *hwmgr,
    enum amd_dpm_forced_level level)
{
 int ret = 0;

 switch (level) {
 case 134:
 case 129:
  ret = smu8_phm_force_dpm_highest(hwmgr);
  break;
 case 133:
 case 130:
 case 128:
  ret = smu8_phm_force_dpm_lowest(hwmgr);
  break;
 case 135:
  ret = smu8_phm_unforce_dpm_levels(hwmgr);
  break;
 case 132:
 case 131:
 default:
  break;
 }

 return ret;
}
