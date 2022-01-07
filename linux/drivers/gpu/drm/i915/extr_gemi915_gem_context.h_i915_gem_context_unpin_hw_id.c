
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int hw_id_pin_count; } ;


 int GEM_BUG_ON (int) ;
 int atomic_dec (int *) ;
 unsigned int atomic_read (int *) ;

__attribute__((used)) static inline void i915_gem_context_unpin_hw_id(struct i915_gem_context *ctx)
{
 GEM_BUG_ON(atomic_read(&ctx->hw_id_pin_count) == 0u);
 atomic_dec(&ctx->hw_id_pin_count);
}
