
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct smu7_leakage_voltage {int dummy; } ;
struct TYPE_4__ {int vddc; } ;
struct TYPE_5__ {TYPE_1__ max_clock_voltage_on_dc; } ;
struct pp_hwmgr {TYPE_2__ dyn_state; scalar_t__ pptable; } ;
struct TYPE_6__ {int vddc; } ;
struct phm_ppt_v1_information {TYPE_3__ max_clock_voltage_on_dc; } ;


 int smu7_patch_ppt_v1_with_vdd_leakage (struct pp_hwmgr*,int *,struct smu7_leakage_voltage*) ;

__attribute__((used)) static int smu7_patch_clock_voltage_limits_with_vddc_leakage(
  struct pp_hwmgr *hwmgr, struct smu7_leakage_voltage *leakage_table,
  uint16_t *vddc)
{
 struct phm_ppt_v1_information *table_info =
   (struct phm_ppt_v1_information *)(hwmgr->pptable);
 smu7_patch_ppt_v1_with_vdd_leakage(hwmgr, (uint16_t *)vddc, leakage_table);
 hwmgr->dyn_state.max_clock_voltage_on_dc.vddc =
   table_info->max_clock_voltage_on_dc.vddc;
 return 0;
}
