
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ test_type; } ;
struct intel_dp {scalar_t__ sink_count; TYPE_1__ compliance; int aux; } ;
struct drm_i915_private {int drm; } ;


 scalar_t__ DP_TEST_LINK_TRAINING ;
 int DRM_DEBUG_KMS (char*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int drm_dp_cec_irq (int *) ;
 int drm_kms_helper_hotplug_event (int *) ;
 int intel_dp_check_service_irq (struct intel_dp*) ;
 int intel_dp_get_dpcd (struct intel_dp*) ;
 scalar_t__ intel_dp_needs_link_retrain (struct intel_dp*) ;
 int intel_psr_short_pulse (struct intel_dp*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static bool
intel_dp_short_pulse(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 u8 old_sink_count = intel_dp->sink_count;
 bool ret;





 memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));







 ret = intel_dp_get_dpcd(intel_dp);

 if ((old_sink_count != intel_dp->sink_count) || !ret) {

  return 0;
 }

 intel_dp_check_service_irq(intel_dp);


 drm_dp_cec_irq(&intel_dp->aux);


 if (intel_dp_needs_link_retrain(intel_dp))
  return 0;

 intel_psr_short_pulse(intel_dp);

 if (intel_dp->compliance.test_type == DP_TEST_LINK_TRAINING) {
  DRM_DEBUG_KMS("Link Training Compliance Test requested\n");

  drm_kms_helper_hotplug_event(&dev_priv->drm);
 }

 return 1;
}
