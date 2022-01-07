
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DSL_LINEMASK_GEN2 ;
 int DSL_LINEMASK_GEN3 ;
 int I915_READ (int ) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int PIPEDSL (int) ;
 int msleep (int) ;

__attribute__((used)) static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
        enum pipe pipe)
{
 i915_reg_t reg = PIPEDSL(pipe);
 u32 line1, line2;
 u32 line_mask;

 if (IS_GEN(dev_priv, 2))
  line_mask = DSL_LINEMASK_GEN2;
 else
  line_mask = DSL_LINEMASK_GEN3;

 line1 = I915_READ(reg) & line_mask;
 msleep(5);
 line2 = I915_READ(reg) & line_mask;

 return line1 != line2;
}
