
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int fan_ctrl_is_in_default_mode; int gfxoff_state_changed_by_workload; int chip_family; int feature_mask; int od_enabled; int * smumgr_funcs; int chip_id; void* pp_table_version; void* request_dpm_level; void* dpm_level; int usec_timeout; } ;







 void* AMD_DPM_FORCED_LEVEL_AUTO ;
 int AMD_MAX_USEC_TIMEOUT ;
 int EINVAL ;
 int PP_ENABLE_GFX_CG_THRU_SMU ;
 int PP_GFXOFF_MASK ;
 void* PP_TABLE_V0 ;
 void* PP_TABLE_V1 ;
 int PP_UVD_HANDSHAKE_MASK ;
 int PP_VBI_TIME_SUPPORT_MASK ;
 int ci_set_asic_special_caps (struct pp_hwmgr*) ;
 int ci_smu_funcs ;
 int fiji_set_asic_special_caps (struct pp_hwmgr*) ;
 int fiji_smu_funcs ;
 int hwmgr_init_default_caps (struct pp_hwmgr*) ;
 int hwmgr_init_workload_prority (struct pp_hwmgr*) ;
 int hwmgr_set_user_specify_caps (struct pp_hwmgr*) ;
 int iceland_smu_funcs ;
 int polaris10_smu_funcs ;
 int polaris_set_asic_special_caps (struct pp_hwmgr*) ;
 int smu10_init_function_pointers (struct pp_hwmgr*) ;
 int smu10_smu_funcs ;
 int smu7_init_function_pointers (struct pp_hwmgr*) ;
 int smu8_init_function_pointers (struct pp_hwmgr*) ;
 int smu8_smu_funcs ;
 int tonga_set_asic_special_caps (struct pp_hwmgr*) ;
 int tonga_smu_funcs ;
 int topaz_set_asic_special_caps (struct pp_hwmgr*) ;
 int vega10_hwmgr_init (struct pp_hwmgr*) ;
 int vega10_smu_funcs ;
 int vega12_hwmgr_init (struct pp_hwmgr*) ;
 int vega12_smu_funcs ;
 int vega20_hwmgr_init (struct pp_hwmgr*) ;
 int vega20_smu_funcs ;
 int vegam_smu_funcs ;

int hwmgr_early_init(struct pp_hwmgr *hwmgr)
{
 if (!hwmgr)
  return -EINVAL;

 hwmgr->usec_timeout = AMD_MAX_USEC_TIMEOUT;
 hwmgr->pp_table_version = PP_TABLE_V1;
 hwmgr->dpm_level = AMD_DPM_FORCED_LEVEL_AUTO;
 hwmgr->request_dpm_level = AMD_DPM_FORCED_LEVEL_AUTO;
 hwmgr_init_default_caps(hwmgr);
 hwmgr_set_user_specify_caps(hwmgr);
 hwmgr->fan_ctrl_is_in_default_mode = 1;
 hwmgr_init_workload_prority(hwmgr);
 hwmgr->gfxoff_state_changed_by_workload = 0;

 switch (hwmgr->chip_family) {
 case 142:
  hwmgr->smumgr_funcs = &ci_smu_funcs;
  ci_set_asic_special_caps(hwmgr);
  hwmgr->feature_mask &= ~(PP_VBI_TIME_SUPPORT_MASK |
      PP_ENABLE_GFX_CG_THRU_SMU |
      PP_GFXOFF_MASK);
  hwmgr->pp_table_version = PP_TABLE_V0;
  hwmgr->od_enabled = 0;
  smu7_init_function_pointers(hwmgr);
  break;
 case 141:
  hwmgr->od_enabled = 0;
  hwmgr->smumgr_funcs = &smu8_smu_funcs;
  hwmgr->feature_mask &= ~PP_GFXOFF_MASK;
  smu8_init_function_pointers(hwmgr);
  break;
 case 139:
  hwmgr->feature_mask &= ~PP_GFXOFF_MASK;
  switch (hwmgr->chip_id) {
  case 132:
   hwmgr->smumgr_funcs = &iceland_smu_funcs;
   topaz_set_asic_special_caps(hwmgr);
   hwmgr->feature_mask &= ~ (PP_VBI_TIME_SUPPORT_MASK |
      PP_ENABLE_GFX_CG_THRU_SMU);
   hwmgr->pp_table_version = PP_TABLE_V0;
   hwmgr->od_enabled = 0;
   break;
  case 133:
   hwmgr->smumgr_funcs = &tonga_smu_funcs;
   tonga_set_asic_special_caps(hwmgr);
   hwmgr->feature_mask &= ~PP_VBI_TIME_SUPPORT_MASK;
   break;
  case 138:
   hwmgr->smumgr_funcs = &fiji_smu_funcs;
   fiji_set_asic_special_caps(hwmgr);
   hwmgr->feature_mask &= ~ (PP_VBI_TIME_SUPPORT_MASK |
      PP_ENABLE_GFX_CG_THRU_SMU);
   break;
  case 136:
  case 137:
  case 135:
   hwmgr->smumgr_funcs = &polaris10_smu_funcs;
   polaris_set_asic_special_caps(hwmgr);
   hwmgr->feature_mask &= ~(PP_UVD_HANDSHAKE_MASK);
   break;
  case 128:
   hwmgr->smumgr_funcs = &vegam_smu_funcs;
   polaris_set_asic_special_caps(hwmgr);
   hwmgr->feature_mask &= ~(PP_UVD_HANDSHAKE_MASK);
   break;
  default:
   return -EINVAL;
  }
  smu7_init_function_pointers(hwmgr);
  break;
 case 143:
  switch (hwmgr->chip_id) {
  case 131:
   hwmgr->feature_mask &= ~PP_GFXOFF_MASK;
   hwmgr->smumgr_funcs = &vega10_smu_funcs;
   vega10_hwmgr_init(hwmgr);
   break;
  case 130:
   hwmgr->smumgr_funcs = &vega12_smu_funcs;
   vega12_hwmgr_init(hwmgr);
   break;
  case 129:
   hwmgr->feature_mask &= ~PP_GFXOFF_MASK;
   hwmgr->smumgr_funcs = &vega20_smu_funcs;
   vega20_hwmgr_init(hwmgr);
   break;
  default:
   return -EINVAL;
  }
  break;
 case 140:
  switch (hwmgr->chip_id) {
  case 134:
   hwmgr->od_enabled = 0;
   hwmgr->smumgr_funcs = &smu10_smu_funcs;
   smu10_init_function_pointers(hwmgr);
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
