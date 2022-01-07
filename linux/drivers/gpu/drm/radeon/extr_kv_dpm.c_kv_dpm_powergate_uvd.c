
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct kv_power_info {int uvd_power_gated; scalar_t__ caps_uvd_pg; } ;


 int PPSMC_MSG_UVDPowerOFF ;
 int PPSMC_MSG_UVDPowerON ;
 int RADEON_CG_BLOCK_UVD ;
 int cik_update_cg (struct radeon_device*,int ,int) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 int kv_notify_message_to_smu (struct radeon_device*,int ) ;
 int kv_update_uvd_dpm (struct radeon_device*,int) ;
 int uvd_v1_0_start (struct radeon_device*) ;
 int uvd_v1_0_stop (struct radeon_device*) ;
 int uvd_v4_2_resume (struct radeon_device*) ;

void kv_dpm_powergate_uvd(struct radeon_device *rdev, bool gate)
{
 struct kv_power_info *pi = kv_get_pi(rdev);

 if (pi->uvd_power_gated == gate)
  return;

 pi->uvd_power_gated = gate;

 if (gate) {
  if (pi->caps_uvd_pg) {
   uvd_v1_0_stop(rdev);
   cik_update_cg(rdev, RADEON_CG_BLOCK_UVD, 0);
  }
  kv_update_uvd_dpm(rdev, gate);
  if (pi->caps_uvd_pg)
   kv_notify_message_to_smu(rdev, PPSMC_MSG_UVDPowerOFF);
 } else {
  if (pi->caps_uvd_pg) {
   kv_notify_message_to_smu(rdev, PPSMC_MSG_UVDPowerON);
   uvd_v4_2_resume(rdev);
   uvd_v1_0_start(rdev);
   cik_update_cg(rdev, RADEON_CG_BLOCK_UVD, 1);
  }
  kv_update_uvd_dpm(rdev, gate);
 }
}
