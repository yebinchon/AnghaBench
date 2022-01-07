
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_cell_v2 {int dummy; } ;
struct cache {int prison; } ;


 int GFP_NOIO ;
 struct dm_bio_prison_cell_v2* dm_bio_prison_alloc_cell_v2 (int ,int ) ;

__attribute__((used)) static struct dm_bio_prison_cell_v2 *alloc_prison_cell(struct cache *cache)
{
 return dm_bio_prison_alloc_cell_v2(cache->prison, GFP_NOIO);
}
