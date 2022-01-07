
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rnd_state {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 unsigned int drm_prandom_u32_max_state (unsigned int,struct rnd_state*) ;
 int swap (unsigned int,unsigned int) ;

void drm_random_reorder(unsigned int *order, unsigned int count,
   struct rnd_state *state)
{
 unsigned int i, j;

 for (i = 0; i < count; ++i) {
  BUILD_BUG_ON(sizeof(unsigned int) > sizeof(u32));
  j = drm_prandom_u32_max_state(count, state);
  swap(order[i], order[j]);
 }
}
