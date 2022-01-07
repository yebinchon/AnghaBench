
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_power_gate {int vcn_gated; } ;
struct smu_power_context {struct smu_power_gate power_gate; } ;
struct smu_context {struct smu_power_context smu_power; } ;


 int SMU_FEATURE_VCN_PG_BIT ;
 int SMU_MSG_PowerDownVcn ;
 int SMU_MSG_PowerUpVcn ;
 scalar_t__ smu_feature_is_enabled (struct smu_context*,int ) ;
 int smu_send_smc_msg (struct smu_context*,int ) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int) ;

__attribute__((used)) static int navi10_dpm_set_uvd_enable(struct smu_context *smu, bool enable)
{
 struct smu_power_context *smu_power = &smu->smu_power;
 struct smu_power_gate *power_gate = &smu_power->power_gate;
 int ret = 0;

 if (enable) {

  if (smu_feature_is_enabled(smu, SMU_FEATURE_VCN_PG_BIT)) {
   ret = smu_send_smc_msg_with_param(smu, SMU_MSG_PowerUpVcn, 1);
   if (ret)
    return ret;
  }
  power_gate->vcn_gated = 0;
 } else {
  if (smu_feature_is_enabled(smu, SMU_FEATURE_VCN_PG_BIT)) {
   ret = smu_send_smc_msg(smu, SMU_MSG_PowerDownVcn);
   if (ret)
    return ret;
  }
  power_gate->vcn_gated = 1;
 }

 return ret;
}
