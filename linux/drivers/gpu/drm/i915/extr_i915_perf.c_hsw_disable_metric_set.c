
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_perf_stream {struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;


 int GDT_CHICKEN_BITS ;
 int GEN6_CSUNIT_CLOCK_GATE_DISABLE ;
 int GEN6_UCGCTL1 ;
 int GEN7_DOP_CLOCK_GATE_ENABLE ;
 int GEN7_MISCCPCTL ;
 int GT_NOA_ENABLE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;

__attribute__((used)) static void hsw_disable_metric_set(struct i915_perf_stream *stream)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;

 I915_WRITE(GEN6_UCGCTL1, (I915_READ(GEN6_UCGCTL1) &
      ~GEN6_CSUNIT_CLOCK_GATE_DISABLE));
 I915_WRITE(GEN7_MISCCPCTL, (I915_READ(GEN7_MISCCPCTL) |
        GEN7_DOP_CLOCK_GATE_ENABLE));

 I915_WRITE(GDT_CHICKEN_BITS, (I915_READ(GDT_CHICKEN_BITS) &
          ~GT_NOA_ENABLE));
}
