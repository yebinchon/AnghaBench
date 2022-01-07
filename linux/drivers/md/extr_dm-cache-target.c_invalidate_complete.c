
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_migration {scalar_t__ overwrite_bio; int cell; struct cache* cache; } ;
struct cache {int prison; } ;
struct bio_list {int dummy; } ;


 int background_work_end (struct cache*) ;
 int bio_io_error (scalar_t__) ;
 int bio_list_init (struct bio_list*) ;
 int defer_bios (struct cache*,struct bio_list*) ;
 scalar_t__ dm_cell_unlock_v2 (int ,int ,struct bio_list*) ;
 int free_migration (struct dm_cache_migration*) ;
 int free_prison_cell (struct cache*,int ) ;

__attribute__((used)) static void invalidate_complete(struct dm_cache_migration *mg, bool success)
{
 struct bio_list bios;
 struct cache *cache = mg->cache;

 bio_list_init(&bios);
 if (dm_cell_unlock_v2(cache->prison, mg->cell, &bios))
  free_prison_cell(cache, mg->cell);

 if (!success && mg->overwrite_bio)
  bio_io_error(mg->overwrite_bio);

 free_migration(mg);
 defer_bios(cache, &bios);

 background_work_end(cache);
}
