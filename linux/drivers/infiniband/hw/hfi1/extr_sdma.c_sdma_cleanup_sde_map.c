
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_rht_map_elem {unsigned int ctr; unsigned int mask; struct sdma_engine** sde; } ;
struct sdma_engine {int dummy; } ;


 int memmove (struct sdma_engine**,struct sdma_engine**,unsigned int) ;
 unsigned int roundup_pow_of_two (int) ;
 int sdma_populate_sde_map (struct sdma_rht_map_elem*) ;

__attribute__((used)) static void sdma_cleanup_sde_map(struct sdma_rht_map_elem *map,
     struct sdma_engine *sde)
{
 unsigned int i, pow;


 for (i = 0; i < map->ctr; i++) {
  if (map->sde[i] == sde) {
   memmove(&map->sde[i], &map->sde[i + 1],
    (map->ctr - i - 1) * sizeof(map->sde[0]));
   map->ctr--;
   pow = roundup_pow_of_two(map->ctr ? : 1);
   map->mask = pow - 1;
   sdma_populate_sde_map(map);
   break;
  }
 }
}
