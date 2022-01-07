
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rnd_state {int dummy; } ;


 int prandom_u32_state (struct rnd_state*) ;

u64 i915_prandom_u64_state(struct rnd_state *rnd)
{
 u64 x;

 x = prandom_u32_state(rnd);
 x <<= 32;
 x |= prandom_u32_state(rnd);

 return x;
}
