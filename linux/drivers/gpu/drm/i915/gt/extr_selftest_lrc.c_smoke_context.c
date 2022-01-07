
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preempt_smoke {int prng; int ncontext; struct i915_gem_context** contexts; } ;
struct i915_gem_context {int dummy; } ;


 size_t i915_prandom_u32_max_state (int ,int *) ;

__attribute__((used)) static struct i915_gem_context *smoke_context(struct preempt_smoke *smoke)
{
 return smoke->contexts[i915_prandom_u32_max_state(smoke->ncontext,
         &smoke->prng)];
}
