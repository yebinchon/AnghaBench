
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct vega10_single_dpm_table {size_t count; TYPE_3__* dpm_levels; } ;
struct TYPE_6__ {struct vega10_single_dpm_table eclk_table; } ;
struct TYPE_8__ {int * VceDpmVoltageIndex; int * EclkDid; } ;
struct TYPE_5__ {TYPE_4__ pp_table; } ;
struct vega10_hwmgr {TYPE_2__ dpm_table; TYPE_1__ smc_state_table; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;
struct TYPE_7__ {int value; } ;
typedef TYPE_4__ PPTable_t ;


 int EINVAL ;
 size_t NUM_VCE_DPM_LEVELS ;
 int vega10_populate_single_eclock_level (struct pp_hwmgr*,int ,int *,int *) ;

__attribute__((used)) static int vega10_populate_smc_vce_levels(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 PPTable_t *pp_table = &(data->smc_state_table.pp_table);
 struct vega10_single_dpm_table *dpm_table = &(data->dpm_table.eclk_table);
 int result = -EINVAL;
 uint32_t i, j;

 for (i = 0; i < dpm_table->count; i++) {
  result = vega10_populate_single_eclock_level(hwmgr,
    dpm_table->dpm_levels[i].value,
    &(pp_table->EclkDid[i]),
    &(pp_table->VceDpmVoltageIndex[i]));
  if (result)
   return result;
 }

 j = i - 1;
 while (i < NUM_VCE_DPM_LEVELS) {
  result = vega10_populate_single_eclock_level(hwmgr,
    dpm_table->dpm_levels[j].value,
    &(pp_table->EclkDid[i]),
    &(pp_table->VceDpmVoltageIndex[i]));
  if (result)
   return result;
  i++;
 }

 return result;
}
