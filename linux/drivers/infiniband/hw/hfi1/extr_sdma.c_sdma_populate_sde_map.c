
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_rht_map_elem {int ctr; int * sde; } ;


 int roundup_pow_of_two (int) ;

__attribute__((used)) static void sdma_populate_sde_map(struct sdma_rht_map_elem *map)
{
 int i;

 for (i = 0; i < roundup_pow_of_two(map->ctr ? : 1) - map->ctr; i++)
  map->sde[map->ctr + i] = map->sde[i];
}
