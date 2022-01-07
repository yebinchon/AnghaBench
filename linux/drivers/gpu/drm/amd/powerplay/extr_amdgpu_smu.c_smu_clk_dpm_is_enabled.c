
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;
typedef enum smu_feature_mask { ____Placeholder_smu_feature_mask } smu_feature_mask ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;


 int SMU_FEATURE_DPM_GFXCLK_BIT ;
 int SMU_FEATURE_DPM_SOCCLK_BIT ;
 int SMU_FEATURE_DPM_UCLK_BIT ;





 int smu_feature_is_enabled (struct smu_context*,int) ;

bool smu_clk_dpm_is_enabled(struct smu_context *smu, enum smu_clk_type clk_type)
{
 enum smu_feature_mask feature_id = 0;

 switch (clk_type) {
 case 131:
 case 128:
  feature_id = SMU_FEATURE_DPM_UCLK_BIT;
  break;
 case 132:
 case 130:
  feature_id = SMU_FEATURE_DPM_GFXCLK_BIT;
  break;
 case 129:
  feature_id = SMU_FEATURE_DPM_SOCCLK_BIT;
  break;
 default:
  return 1;
 }

 if(!smu_feature_is_enabled(smu, feature_id)) {
  return 0;
 }

 return 1;
}
