
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_power_gate {int vcn_gated; } ;
struct smu_power_context {struct smu_power_gate power_gate; } ;
struct smu_context {int pstate_sclk; int pstate_mclk; struct smu_power_context smu_power; } ;
typedef enum amd_pp_sensors { ____Placeholder_amd_pp_sensors } amd_pp_sensors ;
 int EINVAL ;
 int SMU_FEATURE_DPM_UVD_BIT ;
 int SMU_FEATURE_DPM_VCE_BIT ;
 int smu_feature_get_enabled_mask (struct smu_context*,int*,int) ;
 int smu_feature_is_enabled (struct smu_context*,int ) ;

int smu_common_read_sensor(struct smu_context *smu, enum amd_pp_sensors sensor,
      void *data, uint32_t *size)
{
 struct smu_power_context *smu_power = &smu->smu_power;
 struct smu_power_gate *power_gate = &smu_power->power_gate;
 int ret = 0;

 if(!data || !size)
  return -EINVAL;

 switch (sensor) {
 case 131:
  *((uint32_t *)data) = smu->pstate_sclk;
  *size = 4;
  break;
 case 132:
  *((uint32_t *)data) = smu->pstate_mclk;
  *size = 4;
  break;
 case 133:
  ret = smu_feature_get_enabled_mask(smu, (uint32_t *)data, 2);
  *size = 8;
  break;
 case 130:
  *(uint32_t *)data = smu_feature_is_enabled(smu, SMU_FEATURE_DPM_UVD_BIT) ? 1 : 0;
  *size = 4;
  break;
 case 129:
  *(uint32_t *)data = smu_feature_is_enabled(smu, SMU_FEATURE_DPM_VCE_BIT) ? 1 : 0;
  *size = 4;
  break;
 case 128:
  *(uint32_t *)data = power_gate->vcn_gated ? 0 : 1;
  *size = 4;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 if (ret)
  *size = 0;

 return ret;
}
