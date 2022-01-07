
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct kv_power_info {int cac_enabled; scalar_t__ caps_cac; } ;


 int PPSMC_MSG_DisableCac ;
 int PPSMC_MSG_EnableCac ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 int kv_notify_message_to_smu (struct radeon_device*,int ) ;

__attribute__((used)) static int kv_enable_smc_cac(struct radeon_device *rdev, bool enable)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 int ret = 0;

 if (pi->caps_cac) {
  if (enable) {
   ret = kv_notify_message_to_smu(rdev, PPSMC_MSG_EnableCac);
   if (ret)
    pi->cac_enabled = 0;
   else
    pi->cac_enabled = 1;
  } else if (pi->cac_enabled) {
   kv_notify_message_to_smu(rdev, PPSMC_MSG_DisableCac);
   pi->cac_enabled = 0;
  }
 }

 return ret;
}
