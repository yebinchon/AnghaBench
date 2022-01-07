
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int * pptable; } ;
struct phm_ppt_v3_information {int * smc_pptable; int * od_settings_min; int * od_settings_max; int * od_feature_capabilities; int * power_saving_clock_min; int * power_saving_clock_max; } ;


 int kfree (int *) ;

__attribute__((used)) static int vega20_pp_tables_uninitialize(struct pp_hwmgr *hwmgr)
{
 struct phm_ppt_v3_information *pp_table_info =
   (struct phm_ppt_v3_information *)(hwmgr->pptable);

 kfree(pp_table_info->power_saving_clock_max);
 pp_table_info->power_saving_clock_max = ((void*)0);

 kfree(pp_table_info->power_saving_clock_min);
 pp_table_info->power_saving_clock_min = ((void*)0);

 kfree(pp_table_info->od_feature_capabilities);
 pp_table_info->od_feature_capabilities = ((void*)0);

 kfree(pp_table_info->od_settings_max);
 pp_table_info->od_settings_max = ((void*)0);

 kfree(pp_table_info->od_settings_min);
 pp_table_info->od_settings_min = ((void*)0);

 kfree(pp_table_info->smc_pptable);
 pp_table_info->smc_pptable = ((void*)0);

 kfree(hwmgr->pptable);
 hwmgr->pptable = ((void*)0);

 return 0;
}
