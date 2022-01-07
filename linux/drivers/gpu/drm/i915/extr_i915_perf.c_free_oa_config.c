
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_oa_config {struct i915_oa_config* mux_regs; struct i915_oa_config* b_counter_regs; struct i915_oa_config* flex_regs; } ;
struct drm_i915_private {int dummy; } ;


 int PTR_ERR (struct i915_oa_config*) ;
 int kfree (struct i915_oa_config*) ;

__attribute__((used)) static void free_oa_config(struct drm_i915_private *dev_priv,
      struct i915_oa_config *oa_config)
{
 if (!PTR_ERR(oa_config->flex_regs))
  kfree(oa_config->flex_regs);
 if (!PTR_ERR(oa_config->b_counter_regs))
  kfree(oa_config->b_counter_regs);
 if (!PTR_ERR(oa_config->mux_regs))
  kfree(oa_config->mux_regs);
 kfree(oa_config);
}
