
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rnd_state {int dummy; } ;


 int GFP_KERNEL ;
 int __GFP_NOWARN ;
 int __GFP_RETRY_MAYFAIL ;
 int i915_random_reorder (unsigned int*,unsigned int,struct rnd_state*) ;
 unsigned int* kmalloc_array (unsigned int,int,int) ;

unsigned int *i915_random_order(unsigned int count, struct rnd_state *state)
{
 unsigned int *order, i;

 order = kmalloc_array(count, sizeof(*order),
         GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
 if (!order)
  return order;

 for (i = 0; i < count; i++)
  order[i] = i;

 i915_random_reorder(order, count, state);
 return order;
}
