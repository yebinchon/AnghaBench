
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kv_power_info {scalar_t__ bapm_enable; } ;
struct amdgpu_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int amdgpu_kv_smc_bapm_enable (struct amdgpu_device*,int) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static void kv_dpm_enable_bapm(void *handle, bool enable)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct kv_power_info *pi = kv_get_pi(adev);
 int ret;

 if (pi->bapm_enable) {
  ret = amdgpu_kv_smc_bapm_enable(adev, enable);
  if (ret)
   DRM_ERROR("amdgpu_kv_smc_bapm_enable failed\n");
 }
}
