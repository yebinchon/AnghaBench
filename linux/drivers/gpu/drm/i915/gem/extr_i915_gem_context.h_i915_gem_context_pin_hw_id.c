
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int hw_id_pin_count; } ;


 int __i915_gem_context_pin_hw_id (struct i915_gem_context*) ;
 scalar_t__ atomic_inc_not_zero (int *) ;

__attribute__((used)) static inline int i915_gem_context_pin_hw_id(struct i915_gem_context *ctx)
{
 if (atomic_inc_not_zero(&ctx->hw_id_pin_count))
  return 0;

 return __i915_gem_context_pin_hw_id(ctx);
}
