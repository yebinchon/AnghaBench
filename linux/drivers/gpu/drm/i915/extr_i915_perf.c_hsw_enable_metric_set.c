
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_perf_stream {struct i915_oa_config* oa_config; struct drm_i915_private* dev_priv; } ;
struct i915_oa_config {int b_counter_regs_len; int b_counter_regs; int mux_regs_len; int mux_regs; } ;
struct drm_i915_private {int dummy; } ;


 int GEN6_CSUNIT_CLOCK_GATE_DISABLE ;
 int GEN6_UCGCTL1 ;
 int GEN7_DOP_CLOCK_GATE_ENABLE ;
 int GEN7_MISCCPCTL ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int config_oa_regs (struct drm_i915_private*,int ,int ) ;
 int delay_after_mux () ;

__attribute__((used)) static int hsw_enable_metric_set(struct i915_perf_stream *stream)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;
 const struct i915_oa_config *oa_config = stream->oa_config;
 I915_WRITE(GEN7_MISCCPCTL, (I915_READ(GEN7_MISCCPCTL) &
        ~GEN7_DOP_CLOCK_GATE_ENABLE));
 I915_WRITE(GEN6_UCGCTL1, (I915_READ(GEN6_UCGCTL1) |
      GEN6_CSUNIT_CLOCK_GATE_DISABLE));

 config_oa_regs(dev_priv, oa_config->mux_regs, oa_config->mux_regs_len);
 delay_after_mux();

 config_oa_regs(dev_priv, oa_config->b_counter_regs,
         oa_config->b_counter_regs_len);

 return 0;
}
