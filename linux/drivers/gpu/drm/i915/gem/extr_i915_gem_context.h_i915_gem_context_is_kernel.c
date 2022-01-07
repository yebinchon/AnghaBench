
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int file_priv; } ;



__attribute__((used)) static inline bool i915_gem_context_is_kernel(struct i915_gem_context *ctx)
{
 return !ctx->file_priv;
}
