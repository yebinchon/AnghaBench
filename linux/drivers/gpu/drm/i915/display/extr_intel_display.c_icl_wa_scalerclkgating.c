
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int CLKGATE_DIS_PSL (int) ;
 int DPFR_GATING_DIS ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;

__attribute__((used)) static void
icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
         bool enable)
{
 if (enable)
  I915_WRITE(CLKGATE_DIS_PSL(pipe),
      I915_READ(CLKGATE_DIS_PSL(pipe)) | DPFR_GATING_DIS);
 else
  I915_WRITE(CLKGATE_DIS_PSL(pipe),
      I915_READ(CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
}
