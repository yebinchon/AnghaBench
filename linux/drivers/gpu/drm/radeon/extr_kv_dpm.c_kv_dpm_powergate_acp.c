
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ family; } ;
struct kv_power_info {int acp_power_gated; scalar_t__ caps_acp_pg; } ;


 scalar_t__ CHIP_KABINI ;
 scalar_t__ CHIP_MULLINS ;
 int PPSMC_MSG_ACPPowerOFF ;
 int PPSMC_MSG_ACPPowerON ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 int kv_notify_message_to_smu (struct radeon_device*,int ) ;
 int kv_update_acp_dpm (struct radeon_device*,int) ;

__attribute__((used)) static void kv_dpm_powergate_acp(struct radeon_device *rdev, bool gate)
{
 struct kv_power_info *pi = kv_get_pi(rdev);

 if (pi->acp_power_gated == gate)
  return;

 if (rdev->family == CHIP_KABINI || rdev->family == CHIP_MULLINS)
  return;

 pi->acp_power_gated = gate;

 if (gate) {
  kv_update_acp_dpm(rdev, 1);
  if (pi->caps_acp_pg)
   kv_notify_message_to_smu(rdev, PPSMC_MSG_ACPPowerOFF);
 } else {
  if (pi->caps_acp_pg)
   kv_notify_message_to_smu(rdev, PPSMC_MSG_ACPPowerON);
  kv_update_acp_dpm(rdev, 0);
 }
}
