
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int dummy; } ;
struct intel_crtc_state {int cpu_transcoder; } ;
struct TYPE_2__ {scalar_t__ psr2_enabled; } ;
struct drm_i915_private {TYPE_1__ psr; } ;
typedef int i915_reg_t ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int EDP_PSR_DEBUG ;
 int EDP_PSR_DEBUG_MASK_DISP_REG_WRITE ;
 int EDP_PSR_DEBUG_MASK_HPD ;
 int EDP_PSR_DEBUG_MASK_LPSP ;
 int EDP_PSR_DEBUG_MASK_MAX_SLEEP ;
 int EDP_PSR_DEBUG_MASK_MEMUP ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 int IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 int PSR2_ADD_VERTICAL_LINE_COUNT ;
 int PSR2_VSC_ENABLE_PROG_HEADER ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int gen9_chicken_trans_reg (struct drm_i915_private*,int) ;
 int hsw_psr_setup_aux (struct intel_dp*) ;

__attribute__((used)) static void intel_psr_enable_source(struct intel_dp *intel_dp,
        const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 u32 mask;




 if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
  hsw_psr_setup_aux(intel_dp);

 if (dev_priv->psr.psr2_enabled && (IS_GEN(dev_priv, 9) &&
        !IS_GEMINILAKE(dev_priv))) {
  i915_reg_t reg = gen9_chicken_trans_reg(dev_priv,
       cpu_transcoder);
  u32 chicken = I915_READ(reg);

  chicken |= PSR2_VSC_ENABLE_PROG_HEADER |
      PSR2_ADD_VERTICAL_LINE_COUNT;
  I915_WRITE(reg, chicken);
 }







 mask = EDP_PSR_DEBUG_MASK_MEMUP |
        EDP_PSR_DEBUG_MASK_HPD |
        EDP_PSR_DEBUG_MASK_LPSP |
        EDP_PSR_DEBUG_MASK_MAX_SLEEP;

 if (INTEL_GEN(dev_priv) < 11)
  mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;

 I915_WRITE(EDP_PSR_DEBUG, mask);
}
