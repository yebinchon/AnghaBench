
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {scalar_t__ pps_pipe; } ;
struct drm_i915_private {int pps_mutex; } ;


 int EDP_FORCE_VDD ;
 int I915_READ (int ) ;
 scalar_t__ INVALID_PIPE ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int _pp_ctrl_reg (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);

 lockdep_assert_held(&dev_priv->pps_mutex);

 if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
     intel_dp->pps_pipe == INVALID_PIPE)
  return 0;

 return I915_READ(_pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
}
