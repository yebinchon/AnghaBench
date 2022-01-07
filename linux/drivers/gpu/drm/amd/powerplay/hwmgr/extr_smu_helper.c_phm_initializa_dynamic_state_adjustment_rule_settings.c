
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {struct phm_clock_voltage_dependency_table* vddc_dep_on_dal_pwrl; } ;
struct pp_hwmgr {TYPE_2__ dyn_state; scalar_t__ pptable; } ;
struct phm_ppt_v1_information {struct phm_clock_voltage_dependency_table* vddc_dep_on_dal_pwrl; } ;
struct phm_clock_voltage_dependency_table {int count; TYPE_1__* entries; } ;
struct phm_clock_voltage_dependency_record {int dummy; } ;
struct TYPE_3__ {int v; int clk; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PP_DAL_POWERLEVEL_LOW ;
 int PP_DAL_POWERLEVEL_NOMINAL ;
 int PP_DAL_POWERLEVEL_PERFORMANCE ;
 int PP_DAL_POWERLEVEL_ULTRALOW ;
 struct phm_clock_voltage_dependency_table* kzalloc (int,int ) ;
 int pr_err (char*) ;

int phm_initializa_dynamic_state_adjustment_rule_settings(struct pp_hwmgr *hwmgr)
{
 uint32_t table_size;
 struct phm_clock_voltage_dependency_table *table_clk_vlt;
 struct phm_ppt_v1_information *pptable_info = (struct phm_ppt_v1_information *)(hwmgr->pptable);


 table_size = sizeof(uint32_t) + 4 * sizeof(struct phm_clock_voltage_dependency_record);
 table_clk_vlt = kzalloc(table_size, GFP_KERNEL);

 if (((void*)0) == table_clk_vlt) {
  pr_err("Can not allocate space for vddc_dep_on_dal_pwrl! \n");
  return -ENOMEM;
 } else {
  table_clk_vlt->count = 4;
  table_clk_vlt->entries[0].clk = PP_DAL_POWERLEVEL_ULTRALOW;
  table_clk_vlt->entries[0].v = 0;
  table_clk_vlt->entries[1].clk = PP_DAL_POWERLEVEL_LOW;
  table_clk_vlt->entries[1].v = 720;
  table_clk_vlt->entries[2].clk = PP_DAL_POWERLEVEL_NOMINAL;
  table_clk_vlt->entries[2].v = 810;
  table_clk_vlt->entries[3].clk = PP_DAL_POWERLEVEL_PERFORMANCE;
  table_clk_vlt->entries[3].v = 900;
  if (pptable_info != ((void*)0))
   pptable_info->vddc_dep_on_dal_pwrl = table_clk_vlt;
  hwmgr->dyn_state.vddc_dep_on_dal_pwrl = table_clk_vlt;
 }

 return 0;
}
