
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rnd_state {int dummy; } ;


 int I915_NUM_ENGINES ;
 unsigned int i915_prandom_u32_max_state (int ,struct rnd_state*) ;

__attribute__((used)) static unsigned int random_engine(struct rnd_state *rnd)
{
 return i915_prandom_u32_max_state(I915_NUM_ENGINES, rnd);
}
