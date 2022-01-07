
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_perf_stream {struct i915_oa_config* oa_config; struct drm_i915_private* dev_priv; } ;
struct i915_oa_config {int b_counter_regs_len; int b_counter_regs; int mux_regs_len; int mux_regs; } ;
struct drm_i915_private {int dummy; } ;


 int GEN8_OA_DEBUG ;
 int GEN9_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS ;
 int GEN9_OA_DEBUG_INCLUDE_CLK_RATIO ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_GEN_RANGE (struct drm_i915_private*,int,int) ;
 int _MASKED_BIT_ENABLE (int) ;
 int config_oa_regs (struct drm_i915_private*,int ,int ) ;
 int delay_after_mux () ;
 int gen8_configure_all_contexts (struct i915_perf_stream*,struct i915_oa_config const*) ;

__attribute__((used)) static int gen8_enable_metric_set(struct i915_perf_stream *stream)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;
 const struct i915_oa_config *oa_config = stream->oa_config;
 int ret;
 if (IS_GEN_RANGE(dev_priv, 9, 11)) {
  I915_WRITE(GEN8_OA_DEBUG,
      _MASKED_BIT_ENABLE(GEN9_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS |
           GEN9_OA_DEBUG_INCLUDE_CLK_RATIO));
 }






 ret = gen8_configure_all_contexts(stream, oa_config);
 if (ret)
  return ret;

 config_oa_regs(dev_priv, oa_config->mux_regs, oa_config->mux_regs_len);
 delay_after_mux();

 config_oa_regs(dev_priv, oa_config->b_counter_regs,
         oa_config->b_counter_regs_len);

 return 0;
}
