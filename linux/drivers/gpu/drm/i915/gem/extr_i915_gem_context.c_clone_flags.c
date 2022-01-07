
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int user_flags; } ;



__attribute__((used)) static int clone_flags(struct i915_gem_context *dst,
         struct i915_gem_context *src)
{
 dst->user_flags = src->user_flags;
 return 0;
}
