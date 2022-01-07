
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct kv_power_info {int uvd_power_gated; int vce_power_gated; int samu_power_gated; int acp_power_gated; } ;


 struct kv_power_info* kv_get_pi (struct radeon_device*) ;

__attribute__((used)) static void kv_init_powergate_state(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);

 pi->uvd_power_gated = 0;
 pi->vce_power_gated = 0;
 pi->samu_power_gated = 0;
 pi->acp_power_gated = 0;

}
