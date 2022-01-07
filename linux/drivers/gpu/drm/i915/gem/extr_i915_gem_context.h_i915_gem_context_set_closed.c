
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int flags; } ;


 int CONTEXT_CLOSED ;
 int GEM_BUG_ON (int ) ;
 int i915_gem_context_is_closed (struct i915_gem_context*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void i915_gem_context_set_closed(struct i915_gem_context *ctx)
{
 GEM_BUG_ON(i915_gem_context_is_closed(ctx));
 set_bit(CONTEXT_CLOSED, &ctx->flags);
}
