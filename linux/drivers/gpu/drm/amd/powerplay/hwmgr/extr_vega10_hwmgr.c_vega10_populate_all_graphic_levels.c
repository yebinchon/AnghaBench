
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
struct TYPE_6__ {struct vega10_single_dpm_table soc_table; struct vega10_single_dpm_table gfx_table; } ;
struct TYPE_8__ {int * SocDpmVoltageIndex; int * SocclkDid; int GfxclkSlewRate; int * AcgFreqTable; int * GfxclkLevel; } ;
struct TYPE_5__ {TYPE_4__ pp_table; } ;
struct vega10_hwmgr {TYPE_2__ dpm_table; TYPE_1__ smc_state_table; } ;
struct pp_hwmgr {scalar_t__ pptable; struct vega10_hwmgr* backend; } ;
struct phm_ppt_v2_information {int us_gfxclk_slew_rate; } ;
struct TYPE_7__ {int value; } ;
typedef TYPE_4__ PPTable_t ;


 size_t NUM_GFXCLK_DPM_LEVELS ;
 size_t NUM_SOCCLK_DPM_LEVELS ;
 int cpu_to_le16 (int ) ;
 int vega10_populate_single_gfx_level (struct pp_hwmgr*,int ,int *,int *) ;
 int vega10_populate_single_soc_level (struct pp_hwmgr*,int ,int *,int *) ;

__attribute__((used)) static int vega10_populate_all_graphic_levels(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 struct phm_ppt_v2_information *table_info =
   (struct phm_ppt_v2_information *)(hwmgr->pptable);
 PPTable_t *pp_table = &(data->smc_state_table.pp_table);
 struct vega10_single_dpm_table *dpm_table = &(data->dpm_table.gfx_table);
 int result = 0;
 uint32_t i, j;

 for (i = 0; i < dpm_table->count; i++) {
  result = vega10_populate_single_gfx_level(hwmgr,
    dpm_table->dpm_levels[i].value,
    &(pp_table->GfxclkLevel[i]),
    &(pp_table->AcgFreqTable[i]));
  if (result)
   return result;
 }

 j = i - 1;
 while (i < NUM_GFXCLK_DPM_LEVELS) {
  result = vega10_populate_single_gfx_level(hwmgr,
    dpm_table->dpm_levels[j].value,
    &(pp_table->GfxclkLevel[i]),
    &(pp_table->AcgFreqTable[i]));
  if (result)
   return result;
  i++;
 }

 pp_table->GfxclkSlewRate =
   cpu_to_le16(table_info->us_gfxclk_slew_rate);

 dpm_table = &(data->dpm_table.soc_table);
 for (i = 0; i < dpm_table->count; i++) {
  result = vega10_populate_single_soc_level(hwmgr,
    dpm_table->dpm_levels[i].value,
    &(pp_table->SocclkDid[i]),
    &(pp_table->SocDpmVoltageIndex[i]));
  if (result)
   return result;
 }

 j = i - 1;
 while (i < NUM_SOCCLK_DPM_LEVELS) {
  result = vega10_populate_single_soc_level(hwmgr,
    dpm_table->dpm_levels[j].value,
    &(pp_table->SocclkDid[i]),
    &(pp_table->SocDpmVoltageIndex[i]));
  if (result)
   return result;
  i++;
 }

 return result;
}
