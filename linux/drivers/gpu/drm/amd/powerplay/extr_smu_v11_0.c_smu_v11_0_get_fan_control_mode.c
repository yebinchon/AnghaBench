
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;


 int AMD_FAN_CTRL_AUTO ;
 int AMD_FAN_CTRL_MANUAL ;
 int SMU_FEATURE_FAN_CONTROL_BIT ;
 int smu_feature_is_enabled (struct smu_context*,int ) ;

__attribute__((used)) static uint32_t
smu_v11_0_get_fan_control_mode(struct smu_context *smu)
{
 if (!smu_feature_is_enabled(smu, SMU_FEATURE_FAN_CONTROL_BIT))
  return AMD_FAN_CTRL_MANUAL;
 else
  return AMD_FAN_CTRL_AUTO;
}
