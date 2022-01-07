
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {scalar_t__ timeline; } ;


 int __assign_timeline (struct i915_gem_context*,scalar_t__) ;

__attribute__((used)) static int clone_timeline(struct i915_gem_context *dst,
     struct i915_gem_context *src)
{
 if (src->timeline)
  __assign_timeline(dst, src->timeline);

 return 0;
}
