
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;


 int SMU_FEATURE_DPM_VCE_BIT ;
 int smu_feature_is_enabled (struct smu_context*,int ) ;
 int smu_feature_is_supported (struct smu_context*,int ) ;
 int smu_feature_set_enabled (struct smu_context*,int ,int) ;

__attribute__((used)) static int vega20_dpm_set_vce_enable(struct smu_context *smu, bool enable)
{
 if (!smu_feature_is_supported(smu, SMU_FEATURE_DPM_VCE_BIT))
  return 0;

 if (enable == smu_feature_is_enabled(smu, SMU_FEATURE_DPM_VCE_BIT))
  return 0;

 return smu_feature_set_enabled(smu, SMU_FEATURE_DPM_VCE_BIT, enable);
}
