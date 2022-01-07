
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int TDPAdjustment; scalar_t__ TDPAdjustmentPolarity; } ;
struct TYPE_3__ {struct phm_cac_tdp_table* cac_dtp_table; } ;
struct pp_hwmgr {scalar_t__ pp_table_version; scalar_t__ chip_id; TYPE_2__ platform_descriptor; TYPE_1__ dyn_state; scalar_t__ pptable; } ;
struct phm_ppt_v1_information {struct phm_cac_tdp_table* cac_dtp_table; } ;
struct phm_cac_tdp_table {int usTDP; int usConfigurableTDP; } ;


 scalar_t__ CHIP_TONGA ;
 int PHM_PlatformCaps_PowerContainment ;
 scalar_t__ PP_CAP (int ) ;
 scalar_t__ PP_TABLE_V1 ;
 int smu7_set_overdriver_target_tdp (struct pp_hwmgr*,int ) ;

int smu7_power_control_set_level(struct pp_hwmgr *hwmgr)
{
 struct phm_ppt_v1_information *table_info =
   (struct phm_ppt_v1_information *)(hwmgr->pptable);
 struct phm_cac_tdp_table *cac_table;

 int adjust_percent, target_tdp;
 int result = 0;

 if (hwmgr->pp_table_version == PP_TABLE_V1)
  cac_table = table_info->cac_dtp_table;
 else
  cac_table = hwmgr->dyn_state.cac_dtp_table;
 if (PP_CAP(PHM_PlatformCaps_PowerContainment)) {

  adjust_percent = hwmgr->platform_descriptor.TDPAdjustmentPolarity ?
    hwmgr->platform_descriptor.TDPAdjustment :
    (-1 * hwmgr->platform_descriptor.TDPAdjustment);

  if (hwmgr->chip_id > CHIP_TONGA)
   target_tdp = ((100 + adjust_percent) * (int)(cac_table->usTDP * 256)) / 100;
  else
   target_tdp = ((100 + adjust_percent) * (int)(cac_table->usConfigurableTDP * 256)) / 100;

  result = smu7_set_overdriver_target_tdp(hwmgr, (uint32_t)target_tdp);
 }

 return result;
}
