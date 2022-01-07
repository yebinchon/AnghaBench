
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int intel_init_clock_gating (struct drm_i915_private*) ;
 int vlv_allow_gt_wake (struct drm_i915_private*,int) ;
 int vlv_check_no_gt_access (struct drm_i915_private*) ;
 int vlv_force_gfx_clock (struct drm_i915_private*,int) ;
 int vlv_restore_gunit_s0ix_state (struct drm_i915_private*) ;

__attribute__((used)) static int vlv_resume_prepare(struct drm_i915_private *dev_priv,
    bool rpm_resume)
{
 int err;
 int ret;






 ret = vlv_force_gfx_clock(dev_priv, 1);

 vlv_restore_gunit_s0ix_state(dev_priv);

 err = vlv_allow_gt_wake(dev_priv, 1);
 if (!ret)
  ret = err;

 err = vlv_force_gfx_clock(dev_priv, 0);
 if (!ret)
  ret = err;

 vlv_check_no_gt_access(dev_priv);

 if (rpm_resume)
  intel_init_clock_gating(dev_priv);

 return ret;
}
