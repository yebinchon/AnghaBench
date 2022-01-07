
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {scalar_t__ pptable; } ;
struct phm_ppt_v3_information {scalar_t__ smc_pptable; } ;
struct TYPE_2__ {int FanTargetTemperature; } ;
typedef TYPE_1__ PPTable_t ;


 int VEGA20_FAN_TARGET_TEMPERATURE_OVERRIDE ;

__attribute__((used)) static int override_powerplay_table_fantargettemperature(struct pp_hwmgr *hwmgr)
{
 struct phm_ppt_v3_information *pptable_information =
  (struct phm_ppt_v3_information *)hwmgr->pptable;
 PPTable_t *ppsmc_pptable = (PPTable_t *)(pptable_information->smc_pptable);

 ppsmc_pptable->FanTargetTemperature = VEGA20_FAN_TARGET_TEMPERATURE_OVERRIDE;

 return 0;
}
