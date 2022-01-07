
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vegam_smumgr {int * power_tune_defaults; } ;
struct pp_hwmgr {scalar_t__ pptable; scalar_t__ smu_backend; } ;
struct phm_ppt_v1_information {TYPE_1__* cac_dtp_table; } ;
struct TYPE_2__ {int usPowerTuneDataSetID; } ;


 int POWERTUNE_DEFAULT_SET_MAX ;
 int * vegam_power_tune_data_set_array ;

__attribute__((used)) static void vegam_initialize_power_tune_defaults(struct pp_hwmgr *hwmgr)
{
 struct vegam_smumgr *smu_data = (struct vegam_smumgr *)(hwmgr->smu_backend);
 struct phm_ppt_v1_information *table_info =
   (struct phm_ppt_v1_information *)(hwmgr->pptable);

 if (table_info &&
   table_info->cac_dtp_table->usPowerTuneDataSetID <= POWERTUNE_DEFAULT_SET_MAX &&
   table_info->cac_dtp_table->usPowerTuneDataSetID)
  smu_data->power_tune_defaults =
    &vegam_power_tune_data_set_array
    [table_info->cac_dtp_table->usPowerTuneDataSetID - 1];
 else
  smu_data->power_tune_defaults = &vegam_power_tune_data_set_array[0];

}
