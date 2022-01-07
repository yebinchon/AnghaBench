
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 int SDVO_ENABLE ;
 int SDVO_PIPE_SEL_MASK ;
 int SDVO_PIPE_SEL_MASK_CHV ;
 int SDVO_PIPE_SEL_MASK_CPT ;
 int SDVO_PIPE_SEL_SHIFT ;
 int SDVO_PIPE_SEL_SHIFT_CHV ;
 int SDVO_PIPE_SEL_SHIFT_CPT ;

bool intel_sdvo_port_enabled(struct drm_i915_private *dev_priv,
        i915_reg_t sdvo_reg, enum pipe *pipe)
{
 u32 val;

 val = I915_READ(sdvo_reg);


 if (HAS_PCH_CPT(dev_priv))
  *pipe = (val & SDVO_PIPE_SEL_MASK_CPT) >> SDVO_PIPE_SEL_SHIFT_CPT;
 else if (IS_CHERRYVIEW(dev_priv))
  *pipe = (val & SDVO_PIPE_SEL_MASK_CHV) >> SDVO_PIPE_SEL_SHIFT_CHV;
 else
  *pipe = (val & SDVO_PIPE_SEL_MASK) >> SDVO_PIPE_SEL_SHIFT;

 return val & SDVO_ENABLE;
}
