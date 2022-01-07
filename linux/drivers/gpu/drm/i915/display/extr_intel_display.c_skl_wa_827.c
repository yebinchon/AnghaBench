
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int CLKGATE_DIS_PSL (int) ;
 int DUPS1_GATING_DIS ;
 int DUPS2_GATING_DIS ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;

__attribute__((used)) static void
skl_wa_827(struct drm_i915_private *dev_priv, int pipe, bool enable)
{
 if (enable)
  I915_WRITE(CLKGATE_DIS_PSL(pipe),
      I915_READ(CLKGATE_DIS_PSL(pipe)) |
      DUPS1_GATING_DIS | DUPS2_GATING_DIS);
 else
  I915_WRITE(CLKGATE_DIS_PSL(pipe),
      I915_READ(CLKGATE_DIS_PSL(pipe)) &
      ~(DUPS1_GATING_DIS | DUPS2_GATING_DIS));
}
