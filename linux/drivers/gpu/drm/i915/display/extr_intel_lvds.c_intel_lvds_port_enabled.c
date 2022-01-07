
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
 int LVDS_PIPE_SEL_MASK ;
 int LVDS_PIPE_SEL_MASK_CPT ;
 int LVDS_PIPE_SEL_SHIFT ;
 int LVDS_PIPE_SEL_SHIFT_CPT ;
 int LVDS_PORT_EN ;

bool intel_lvds_port_enabled(struct drm_i915_private *dev_priv,
        i915_reg_t lvds_reg, enum pipe *pipe)
{
 u32 val;

 val = I915_READ(lvds_reg);


 if (HAS_PCH_CPT(dev_priv))
  *pipe = (val & LVDS_PIPE_SEL_MASK_CPT) >> LVDS_PIPE_SEL_SHIFT_CPT;
 else
  *pipe = (val & LVDS_PIPE_SEL_MASK) >> LVDS_PIPE_SEL_SHIFT;

 return val & LVDS_PORT_EN;
}
