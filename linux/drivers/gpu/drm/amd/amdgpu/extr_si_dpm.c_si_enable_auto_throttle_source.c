
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv7xx_power_info {int active_auto_throttle_sources; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_dpm_auto_throttle_src { ____Placeholder_amdgpu_dpm_auto_throttle_src } amdgpu_dpm_auto_throttle_src ;


 struct rv7xx_power_info* rv770_get_pi (struct amdgpu_device*) ;
 int si_set_dpm_event_sources (struct amdgpu_device*,int) ;

__attribute__((used)) static void si_enable_auto_throttle_source(struct amdgpu_device *adev,
        enum amdgpu_dpm_auto_throttle_src source,
        bool enable)
{
 struct rv7xx_power_info *pi = rv770_get_pi(adev);

 if (enable) {
  if (!(pi->active_auto_throttle_sources & (1 << source))) {
   pi->active_auto_throttle_sources |= 1 << source;
   si_set_dpm_event_sources(adev, pi->active_auto_throttle_sources);
  }
 } else {
  if (pi->active_auto_throttle_sources & (1 << source)) {
   pi->active_auto_throttle_sources &= ~(1 << source);
   si_set_dpm_event_sources(adev, pi->active_auto_throttle_sources);
  }
 }
}
