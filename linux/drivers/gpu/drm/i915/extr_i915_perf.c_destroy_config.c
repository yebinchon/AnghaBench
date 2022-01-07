
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_oa_config {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int put_oa_config (struct drm_i915_private*,struct i915_oa_config*) ;

__attribute__((used)) static int destroy_config(int id, void *p, void *data)
{
 struct drm_i915_private *dev_priv = data;
 struct i915_oa_config *oa_config = p;

 put_oa_config(dev_priv, oa_config);

 return 0;
}
