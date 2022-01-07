
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int flags; } ;


 int CONTEXT_BANNED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool i915_gem_context_is_banned(const struct i915_gem_context *ctx)
{
 return test_bit(CONTEXT_BANNED, &ctx->flags);
}
