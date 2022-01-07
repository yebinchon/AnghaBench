
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int class2; int class; } ;
struct radeon_device {int dummy; } ;
struct ni_power_info {int support_cac_long_term_average; int cac_enabled; scalar_t__ enable_cac; } ;
typedef scalar_t__ PPSMC_Result ;


 int EINVAL ;
 int PPSMC_CACLongTermAvgDisable ;
 int PPSMC_CACLongTermAvgEnable ;
 int PPSMC_MSG_CollectCAC_PowerCorreln ;
 int PPSMC_MSG_DisableCac ;
 int PPSMC_MSG_EnableCac ;
 scalar_t__ PPSMC_Result_OK ;
 struct ni_power_info* ni_get_pi (struct radeon_device*) ;
 int r600_is_uvd_state (int ,int ) ;
 scalar_t__ rv770_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static int ni_enable_smc_cac(struct radeon_device *rdev,
        struct radeon_ps *radeon_new_state,
        bool enable)
{
 struct ni_power_info *ni_pi = ni_get_pi(rdev);
 int ret = 0;
 PPSMC_Result smc_result;

 if (ni_pi->enable_cac) {
  if (enable) {
   if (!r600_is_uvd_state(radeon_new_state->class, radeon_new_state->class2)) {
    smc_result = rv770_send_msg_to_smc(rdev, PPSMC_MSG_CollectCAC_PowerCorreln);

    if (ni_pi->support_cac_long_term_average) {
     smc_result = rv770_send_msg_to_smc(rdev, PPSMC_CACLongTermAvgEnable);
     if (PPSMC_Result_OK != smc_result)
      ni_pi->support_cac_long_term_average = 0;
    }

    smc_result = rv770_send_msg_to_smc(rdev, PPSMC_MSG_EnableCac);
    if (PPSMC_Result_OK != smc_result)
     ret = -EINVAL;

    ni_pi->cac_enabled = (PPSMC_Result_OK == smc_result) ? 1 : 0;
   }
  } else if (ni_pi->cac_enabled) {
   smc_result = rv770_send_msg_to_smc(rdev, PPSMC_MSG_DisableCac);

   ni_pi->cac_enabled = 0;

   if (ni_pi->support_cac_long_term_average) {
    smc_result = rv770_send_msg_to_smc(rdev, PPSMC_CACLongTermAvgDisable);
    if (PPSMC_Result_OK != smc_result)
     ni_pi->support_cac_long_term_average = 0;
   }
  }
 }

 return ret;
}
