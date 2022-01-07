
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int flags; } ;


 int CONTEXT_CLOSED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool i915_gem_context_is_closed(const struct i915_gem_context *ctx)
{
 return test_bit(CONTEXT_CLOSED, &ctx->flags);
}
