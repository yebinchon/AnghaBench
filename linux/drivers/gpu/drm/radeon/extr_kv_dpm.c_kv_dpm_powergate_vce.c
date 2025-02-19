
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct kv_power_info {int vce_power_gated; scalar_t__ caps_vce_pg; } ;


 int PPSMC_MSG_VCEPowerOFF ;
 int PPSMC_MSG_VCEPowerON ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 int kv_notify_message_to_smu (struct radeon_device*,int ) ;
 int vce_v1_0_start (struct radeon_device*) ;
 int vce_v2_0_resume (struct radeon_device*) ;

__attribute__((used)) static void kv_dpm_powergate_vce(struct radeon_device *rdev, bool gate)
{
 struct kv_power_info *pi = kv_get_pi(rdev);

 if (pi->vce_power_gated == gate)
  return;

 pi->vce_power_gated = gate;

 if (gate) {
  if (pi->caps_vce_pg) {

   kv_notify_message_to_smu(rdev, PPSMC_MSG_VCEPowerOFF);
  }
 } else {
  if (pi->caps_vce_pg) {
   kv_notify_message_to_smu(rdev, PPSMC_MSG_VCEPowerON);
   vce_v2_0_resume(rdev);
   vce_v1_0_start(rdev);
  }
 }
}
