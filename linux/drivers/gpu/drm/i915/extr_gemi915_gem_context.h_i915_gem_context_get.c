
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct i915_gem_context *
i915_gem_context_get(struct i915_gem_context *ctx)
{
 kref_get(&ctx->ref);
 return ctx;
}
