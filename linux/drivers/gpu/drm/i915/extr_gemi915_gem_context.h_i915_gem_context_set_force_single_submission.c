
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int flags; } ;


 int CONTEXT_FORCE_SINGLE_SUBMISSION ;
 int __set_bit (int ,int *) ;

__attribute__((used)) static inline void i915_gem_context_set_force_single_submission(struct i915_gem_context *ctx)
{
 __set_bit(CONTEXT_FORCE_SINGLE_SUBMISSION, &ctx->flags);
}
