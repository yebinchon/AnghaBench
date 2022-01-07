
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int PP_ASSERT_WITH_CODE (int,char*,int) ;
 int vega12_disable_all_smu_features (struct pp_hwmgr*) ;

__attribute__((used)) static int vega12_disable_dpm_tasks(struct pp_hwmgr *hwmgr)
{
 int tmp_result, result = 0;

 tmp_result = vega12_disable_all_smu_features(hwmgr);
 PP_ASSERT_WITH_CODE((tmp_result == 0),
   "Failed to disable all smu features!", result = tmp_result);

 return result;
}
