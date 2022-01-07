
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;
struct TYPE_2__ {int (* force_dpm_level ) (struct pp_hwmgr*,int) ;} ;


 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*,int) ;

int phm_force_dpm_levels(struct pp_hwmgr *hwmgr, enum amd_dpm_forced_level level)
{
 int ret = 0;

 PHM_FUNC_CHECK(hwmgr);

 if (hwmgr->hwmgr_func->force_dpm_level != ((void*)0))
  ret = hwmgr->hwmgr_func->force_dpm_level(hwmgr, level);

 return ret;
}
