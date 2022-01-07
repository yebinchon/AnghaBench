
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
struct drm_i915_private {int pps_mutex; } ;
typedef int intel_wakeref_t ;


 int dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int intel_aux_power_domain (int ) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int mutex_lock (int *) ;

__attribute__((used)) static intel_wakeref_t
pps_lock(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 intel_wakeref_t wakeref;





 wakeref = intel_display_power_get(dev_priv,
       intel_aux_power_domain(dp_to_dig_port(intel_dp)));

 mutex_lock(&dev_priv->pps_mutex);

 return wakeref;
}
