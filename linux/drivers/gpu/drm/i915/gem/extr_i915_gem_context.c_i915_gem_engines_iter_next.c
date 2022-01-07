
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int dummy; } ;
struct i915_gem_engines_iter {scalar_t__ idx; struct i915_gem_engines* engines; } ;
struct i915_gem_engines {scalar_t__ num_engines; struct intel_context** engines; } ;



struct intel_context *
i915_gem_engines_iter_next(struct i915_gem_engines_iter *it)
{
 const struct i915_gem_engines *e = it->engines;
 struct intel_context *ctx;

 do {
  if (it->idx >= e->num_engines)
   return ((void*)0);

  ctx = e->engines[it->idx++];
 } while (!ctx);

 return ctx;
}
