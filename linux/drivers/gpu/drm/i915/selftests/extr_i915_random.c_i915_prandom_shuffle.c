
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rnd_state {int dummy; } ;
typedef int stack ;


 size_t U32_MAX ;
 scalar_t__ WARN_ON (int) ;
 size_t i915_prandom_u32_max_state (size_t,struct rnd_state*) ;
 int memcpy (void*,char*,size_t) ;

void i915_prandom_shuffle(void *arr, size_t elsz, size_t count,
     struct rnd_state *state)
{
 char stack[128];

 if (WARN_ON(elsz > sizeof(stack) || count > U32_MAX))
  return;

 if (!elsz || !count)
  return;


 while (--count) {
  size_t swp;

  swp = i915_prandom_u32_max_state(count + 1, state);
  if (swp == count)
   continue;

  memcpy(stack, arr + count * elsz, elsz);
  memcpy(arr + count * elsz, arr + swp * elsz, elsz);
  memcpy(arr + swp * elsz, stack, elsz);
 }
}
