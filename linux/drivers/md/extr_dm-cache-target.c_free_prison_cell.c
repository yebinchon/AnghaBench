
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_cell_v2 {int dummy; } ;
struct cache {int prison; } ;


 int dm_bio_prison_free_cell_v2 (int ,struct dm_bio_prison_cell_v2*) ;

__attribute__((used)) static void free_prison_cell(struct cache *cache, struct dm_bio_prison_cell_v2 *cell)
{
 dm_bio_prison_free_cell_v2(cache->prison, cell);
}
