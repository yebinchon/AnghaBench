
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int user_flags; } ;


 int UCONTEXT_RECOVERABLE ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static inline void i915_gem_context_clear_recoverable(struct i915_gem_context *ctx)
{
 clear_bit(UCONTEXT_RECOVERABLE, &ctx->user_flags);
}
