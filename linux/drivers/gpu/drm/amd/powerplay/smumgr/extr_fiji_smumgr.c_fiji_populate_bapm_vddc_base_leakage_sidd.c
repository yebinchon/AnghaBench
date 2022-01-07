
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint16_t ;
struct pp_hwmgr {scalar_t__ pptable; scalar_t__ smu_backend; } ;
struct phm_ppt_v1_information {struct phm_cac_tdp_table* cac_dtp_table; } ;
struct phm_cac_tdp_table {int usHighCACLeakage; int usLowCACLeakage; } ;
struct TYPE_2__ {void* BapmVddCBaseLeakageLoSidd; void* BapmVddCBaseLeakageHiSidd; } ;
struct fiji_smumgr {TYPE_1__ power_tune_table; } ;


 void* CONVERT_FROM_HOST_TO_SMC_US (void*) ;

__attribute__((used)) static int fiji_populate_bapm_vddc_base_leakage_sidd(struct pp_hwmgr *hwmgr)
{
 struct fiji_smumgr *smu_data = (struct fiji_smumgr *)(hwmgr->smu_backend);
 struct phm_ppt_v1_information *table_info =
   (struct phm_ppt_v1_information *)(hwmgr->pptable);
 uint16_t HiSidd = smu_data->power_tune_table.BapmVddCBaseLeakageHiSidd;
 uint16_t LoSidd = smu_data->power_tune_table.BapmVddCBaseLeakageLoSidd;
 struct phm_cac_tdp_table *cac_table = table_info->cac_dtp_table;

 HiSidd = (uint16_t)(cac_table->usHighCACLeakage / 100 * 256);
 LoSidd = (uint16_t)(cac_table->usLowCACLeakage / 100 * 256);

 smu_data->power_tune_table.BapmVddCBaseLeakageHiSidd =
   CONVERT_FROM_HOST_TO_SMC_US(HiSidd);
 smu_data->power_tune_table.BapmVddCBaseLeakageLoSidd =
   CONVERT_FROM_HOST_TO_SMC_US(LoSidd);

 return 0;
}
