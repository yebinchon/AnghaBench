
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv6xx_power_info {int active_auto_throttle_sources; } ;
struct radeon_device {int dummy; } ;
typedef enum radeon_dpm_auto_throttle_src { ____Placeholder_radeon_dpm_auto_throttle_src } radeon_dpm_auto_throttle_src ;


 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;
 int rv6xx_set_dpm_event_sources (struct radeon_device*,int) ;

__attribute__((used)) static void rv6xx_enable_auto_throttle_source(struct radeon_device *rdev,
           enum radeon_dpm_auto_throttle_src source,
           bool enable)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 if (enable) {
  if (!(pi->active_auto_throttle_sources & (1 << source))) {
   pi->active_auto_throttle_sources |= 1 << source;
   rv6xx_set_dpm_event_sources(rdev, pi->active_auto_throttle_sources);
  }
 } else {
  if (pi->active_auto_throttle_sources & (1 << source)) {
   pi->active_auto_throttle_sources &= ~(1 << source);
   rv6xx_set_dpm_event_sources(rdev, pi->active_auto_throttle_sources);
  }
 }
}
