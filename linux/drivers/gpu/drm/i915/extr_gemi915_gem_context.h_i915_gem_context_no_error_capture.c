
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int user_flags; } ;


 int UCONTEXT_NO_ERROR_CAPTURE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool i915_gem_context_no_error_capture(const struct i915_gem_context *ctx)
{
 return test_bit(UCONTEXT_NO_ERROR_CAPTURE, &ctx->user_flags);
}
