
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_gem_context {int dummy; } ;
struct drm_i915_file_private {int context_idr; } ;


 struct i915_gem_context* idr_find (int *,int ) ;

__attribute__((used)) static inline struct i915_gem_context *
__i915_gem_context_lookup_rcu(struct drm_i915_file_private *file_priv, u32 id)
{
 return idr_find(&file_priv->context_idr, id);
}
