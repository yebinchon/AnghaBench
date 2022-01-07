
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rnd_state {int dummy; } ;


 int i915_prandom_shuffle (unsigned int*,int,unsigned int,struct rnd_state*) ;

void i915_random_reorder(unsigned int *order, unsigned int count,
    struct rnd_state *state)
{
 i915_prandom_shuffle(order, sizeof(*order), count, state);
}
