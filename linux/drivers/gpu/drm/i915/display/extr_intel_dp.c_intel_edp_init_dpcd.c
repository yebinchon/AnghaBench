
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_dp {scalar_t__* dpcd; scalar_t__* edp_dpcd; int* sink_rates; int num_sink_rates; int use_rate_select; int aux; int desc; } ;
struct drm_i915_private {int dummy; } ;
typedef int sink_rates ;
typedef scalar_t__ __le16 ;
struct TYPE_4__ {int dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct TYPE_6__ {TYPE_2__ base; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 size_t DP_DPCD_REV ;
 scalar_t__ DP_EDP_14 ;
 int DP_EDP_DPCD_REV ;
 int DP_MAX_SUPPORTED_RATES ;
 int DP_SUPPORTED_LINK_RATES ;
 int DRM_DEBUG_KMS (char*,int,scalar_t__*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int WARN_ON (int) ;
 TYPE_3__* dp_to_dig_port (struct intel_dp*) ;
 int drm_dp_dpcd_read (int *,int ,scalar_t__*,int) ;
 int drm_dp_is_branch (scalar_t__*) ;
 int drm_dp_read_desc (int *,int *,int ) ;
 int intel_dp_get_dsc_sink_cap (struct intel_dp*) ;
 int intel_dp_read_dpcd (struct intel_dp*) ;
 int intel_dp_set_common_rates (struct intel_dp*) ;
 int intel_dp_set_sink_rates (struct intel_dp*) ;
 int intel_psr_init_dpcd (struct intel_dp*) ;
 int le16_to_cpu (scalar_t__) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool
intel_edp_init_dpcd(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv =
  to_i915(dp_to_dig_port(intel_dp)->base.base.dev);


 WARN_ON(intel_dp->dpcd[DP_DPCD_REV] != 0);

 if (!intel_dp_read_dpcd(intel_dp))
  return 0;

 drm_dp_read_desc(&intel_dp->aux, &intel_dp->desc,
    drm_dp_is_branch(intel_dp->dpcd));
 if (drm_dp_dpcd_read(&intel_dp->aux, DP_EDP_DPCD_REV,
        intel_dp->edp_dpcd, sizeof(intel_dp->edp_dpcd)) ==
        sizeof(intel_dp->edp_dpcd))
  DRM_DEBUG_KMS("eDP DPCD: %*ph\n", (int) sizeof(intel_dp->edp_dpcd),
         intel_dp->edp_dpcd);





 intel_psr_init_dpcd(intel_dp);


 if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
  __le16 sink_rates[DP_MAX_SUPPORTED_RATES];
  int i;

  drm_dp_dpcd_read(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
    sink_rates, sizeof(sink_rates));

  for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
   int val = le16_to_cpu(sink_rates[i]);

   if (val == 0)
    break;







   intel_dp->sink_rates[i] = (val * 200) / 10;
  }
  intel_dp->num_sink_rates = i;
 }





 if (intel_dp->num_sink_rates)
  intel_dp->use_rate_select = 1;
 else
  intel_dp_set_sink_rates(intel_dp);

 intel_dp_set_common_rates(intel_dp);


 if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
  intel_dp_get_dsc_sink_cap(intel_dp);

 return 1;
}
