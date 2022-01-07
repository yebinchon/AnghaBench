
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_oa_config {int ref_count; } ;
struct drm_i915_private {int dummy; } ;


 int atomic_dec_and_test (int *) ;
 int free_oa_config (struct drm_i915_private*,struct i915_oa_config*) ;

__attribute__((used)) static void put_oa_config(struct drm_i915_private *dev_priv,
     struct i915_oa_config *oa_config)
{
 if (!atomic_dec_and_test(&oa_config->ref_count))
  return;

 free_oa_config(dev_priv, oa_config);
}
