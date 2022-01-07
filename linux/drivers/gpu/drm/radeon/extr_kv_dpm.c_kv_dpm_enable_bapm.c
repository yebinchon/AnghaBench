
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct kv_power_info {scalar_t__ bapm_enable; } ;


 int DRM_ERROR (char*) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 int kv_smc_bapm_enable (struct radeon_device*,int) ;

void kv_dpm_enable_bapm(struct radeon_device *rdev, bool enable)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 int ret;

 if (pi->bapm_enable) {
  ret = kv_smc_bapm_enable(rdev, enable);
  if (ret)
   DRM_ERROR("kv_smc_bapm_enable failed\n");
 }
}
