
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int sched; } ;



__attribute__((used)) static int clone_schedattr(struct i915_gem_context *dst,
      struct i915_gem_context *src)
{
 dst->sched = src->sched;
 return 0;
}
