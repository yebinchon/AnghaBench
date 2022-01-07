
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct ci_power_info {int cac_enabled; scalar_t__ caps_cac; } ;
typedef scalar_t__ PPSMC_Result ;


 int EINVAL ;
 int PPSMC_MSG_DisableCac ;
 int PPSMC_MSG_EnableCac ;
 scalar_t__ PPSMC_Result_OK ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 scalar_t__ ci_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static int ci_enable_smc_cac(struct radeon_device *rdev, bool enable)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 PPSMC_Result smc_result;
 int ret = 0;

 if (pi->caps_cac) {
  if (enable) {
   smc_result = ci_send_msg_to_smc(rdev, PPSMC_MSG_EnableCac);
   if (smc_result != PPSMC_Result_OK) {
    ret = -EINVAL;
    pi->cac_enabled = 0;
   } else {
    pi->cac_enabled = 1;
   }
  } else if (pi->cac_enabled) {
   ci_send_msg_to_smc(rdev, PPSMC_MSG_DisableCac);
   pi->cac_enabled = 0;
  }
 }

 return ret;
}
