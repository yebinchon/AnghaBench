
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct pp_hwmgr {scalar_t__ pptable; scalar_t__ smu_backend; } ;
struct phm_ppt_v1_information {TYPE_1__* cac_dtp_table; } ;
struct TYPE_4__ {int TDC_MAWt; int TDC_VDDC_ThrottleReleaseLimitPerc; int TDC_VDDC_PkgLimit; } ;
struct fiji_smumgr {TYPE_2__ power_tune_table; struct fiji_pt_defaults* power_tune_defaults; } ;
struct fiji_pt_defaults {int TDC_MAWt; int TDC_VDDC_ThrottleReleaseLimitPerc; } ;
struct TYPE_3__ {int usTDC; } ;


 int CONVERT_FROM_HOST_TO_SMC_US (scalar_t__) ;

__attribute__((used)) static int fiji_populate_tdc_limit(struct pp_hwmgr *hwmgr)
{
 uint16_t tdc_limit;
 struct fiji_smumgr *smu_data = (struct fiji_smumgr *)(hwmgr->smu_backend);
 struct phm_ppt_v1_information *table_info =
   (struct phm_ppt_v1_information *)(hwmgr->pptable);
 const struct fiji_pt_defaults *defaults = smu_data->power_tune_defaults;




 tdc_limit = (uint16_t)(table_info->cac_dtp_table->usTDC * 128);
 smu_data->power_tune_table.TDC_VDDC_PkgLimit =
   CONVERT_FROM_HOST_TO_SMC_US(tdc_limit);
 smu_data->power_tune_table.TDC_VDDC_ThrottleReleaseLimitPerc =
   defaults->TDC_VDDC_ThrottleReleaseLimitPerc;
 smu_data->power_tune_table.TDC_MAWt = defaults->TDC_MAWt;

 return 0;
}
