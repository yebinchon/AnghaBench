
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_bio_data {struct dm_bio_prison_cell_v2* cell; } ;
struct dm_cell_key_v2 {int dummy; } ;
struct dm_bio_prison_cell_v2 {int dummy; } ;
struct cache {int prison; } ;
struct bio {int dummy; } ;
typedef int dm_oblock_t ;


 struct dm_bio_prison_cell_v2* alloc_prison_cell (struct cache*) ;
 int build_key (int ,int ,struct dm_cell_key_v2*) ;
 int dm_cell_get_v2 (int ,struct dm_cell_key_v2*,int ,struct bio*,struct dm_bio_prison_cell_v2*,struct dm_bio_prison_cell_v2**) ;
 int free_prison_cell (struct cache*,struct dm_bio_prison_cell_v2*) ;
 scalar_t__ from_oblock (int ) ;
 struct per_bio_data* get_per_bio_data (struct bio*) ;
 int lock_level (struct bio*) ;
 int to_oblock (scalar_t__) ;

__attribute__((used)) static bool bio_detain_shared(struct cache *cache, dm_oblock_t oblock, struct bio *bio)
{
 bool r;
 struct per_bio_data *pb;
 struct dm_cell_key_v2 key;
 dm_oblock_t end = to_oblock(from_oblock(oblock) + 1ULL);
 struct dm_bio_prison_cell_v2 *cell_prealloc, *cell;

 cell_prealloc = alloc_prison_cell(cache);

 build_key(oblock, end, &key);
 r = dm_cell_get_v2(cache->prison, &key, lock_level(bio), bio, cell_prealloc, &cell);
 if (!r) {



  free_prison_cell(cache, cell_prealloc);
  return r;
 }

 if (cell != cell_prealloc)
  free_prison_cell(cache, cell_prealloc);

 pb = get_per_bio_data(bio);
 pb->cell = cell;

 return r;
}
