
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int flags; } ;


 int CONTEXT_USER_ENGINES ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool
i915_gem_context_user_engines(const struct i915_gem_context *ctx)
{
 return test_bit(CONTEXT_USER_ENGINES, &ctx->flags);
}
