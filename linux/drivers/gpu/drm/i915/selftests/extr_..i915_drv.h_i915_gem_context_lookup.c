
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_gem_context {int ref; } ;
struct drm_i915_file_private {int dummy; } ;


 struct i915_gem_context* __i915_gem_context_lookup_rcu (struct drm_i915_file_private*,int ) ;
 int kref_get_unless_zero (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline struct i915_gem_context *
i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id)
{
 struct i915_gem_context *ctx;

 rcu_read_lock();
 ctx = __i915_gem_context_lookup_rcu(file_priv, id);
 if (ctx && !kref_get_unless_zero(&ctx->ref))
  ctx = ((void*)0);
 rcu_read_unlock();

 return ctx;
}
