
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vega10_hwmgr {int vddc_leakage; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; scalar_t__ pptable; } ;
struct TYPE_2__ {int vddc; } ;
struct phm_ppt_v2_information {int vddc_lookup_table; TYPE_1__ max_clock_voltage_on_dc; } ;


 int vega10_patch_clock_voltage_limits_with_vddc_leakage (struct pp_hwmgr*,int *,int *) ;
 int vega10_patch_lookup_table_with_leakage (struct pp_hwmgr*,int ,int *) ;
 int vega10_patch_voltage_dependency_tables_with_lookup_table (struct pp_hwmgr*) ;
 int vega10_sort_lookup_table (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int vega10_complete_dependency_tables(struct pp_hwmgr *hwmgr)
{
 int result = 0;
 int tmp_result;
 struct phm_ppt_v2_information *table_info =
   (struct phm_ppt_v2_information *)(hwmgr->pptable);
 tmp_result = vega10_patch_voltage_dependency_tables_with_lookup_table(hwmgr);
 if (tmp_result)
  result = tmp_result;

 tmp_result = vega10_sort_lookup_table(hwmgr, table_info->vddc_lookup_table);
 if (tmp_result)
  result = tmp_result;

 return result;
}
