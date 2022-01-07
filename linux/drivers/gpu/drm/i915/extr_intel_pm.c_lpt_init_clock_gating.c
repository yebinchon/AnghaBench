
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ HAS_PCH_LPT_LP (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PCH_LP_PARTITION_LEVEL_DISABLE ;
 int PIPE_A ;
 int SOUTH_DSPCLK_GATE_D ;
 int TRANS_CHICKEN1 (int ) ;
 int TRANS_CHICKEN1_DP0UNIT_GC_DISABLE ;

__attribute__((used)) static void lpt_init_clock_gating(struct drm_i915_private *dev_priv)
{




 if (HAS_PCH_LPT_LP(dev_priv))
  I915_WRITE(SOUTH_DSPCLK_GATE_D,
      I915_READ(SOUTH_DSPCLK_GATE_D) |
      PCH_LP_PARTITION_LEVEL_DISABLE);


 I915_WRITE(TRANS_CHICKEN1(PIPE_A),
     I915_READ(TRANS_CHICKEN1(PIPE_A)) |
     TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
}
