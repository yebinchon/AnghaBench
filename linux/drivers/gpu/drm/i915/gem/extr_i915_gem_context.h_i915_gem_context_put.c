
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int ref; } ;


 int i915_gem_context_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void i915_gem_context_put(struct i915_gem_context *ctx)
{
 kref_put(&ctx->ref, i915_gem_context_release);
}
