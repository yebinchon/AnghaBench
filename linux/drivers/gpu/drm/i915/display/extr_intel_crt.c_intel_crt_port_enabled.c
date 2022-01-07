
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int ADPA_DAC_ENABLE ;
 int ADPA_PIPE_SEL_MASK ;
 int ADPA_PIPE_SEL_MASK_CPT ;
 int ADPA_PIPE_SEL_SHIFT ;
 int ADPA_PIPE_SEL_SHIFT_CPT ;
 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 int I915_READ (int ) ;

bool intel_crt_port_enabled(struct drm_i915_private *dev_priv,
       i915_reg_t adpa_reg, enum pipe *pipe)
{
 u32 val;

 val = I915_READ(adpa_reg);


 if (HAS_PCH_CPT(dev_priv))
  *pipe = (val & ADPA_PIPE_SEL_MASK_CPT) >> ADPA_PIPE_SEL_SHIFT_CPT;
 else
  *pipe = (val & ADPA_PIPE_SEL_MASK) >> ADPA_PIPE_SEL_SHIFT;

 return val & ADPA_DAC_ENABLE;
}
