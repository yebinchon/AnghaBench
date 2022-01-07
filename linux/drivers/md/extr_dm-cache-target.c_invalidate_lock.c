
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_cell_key_v2 {int dummy; } ;
struct TYPE_2__ {int ws; } ;
struct dm_cache_migration {TYPE_1__ k; struct dm_bio_prison_cell_v2* cell; int invalidate_oblock; struct cache* cache; } ;
struct dm_bio_prison_cell_v2 {int dummy; } ;
struct cache {int wq; int prison; } ;


 int READ_WRITE_LOCK_LEVEL ;
 struct dm_bio_prison_cell_v2* alloc_prison_cell (struct cache*) ;
 int build_key (int ,int ,struct dm_cell_key_v2*) ;
 int dm_cell_lock_v2 (int ,struct dm_cell_key_v2*,int ,struct dm_bio_prison_cell_v2*,struct dm_bio_prison_cell_v2**) ;
 int free_prison_cell (struct cache*,struct dm_bio_prison_cell_v2*) ;
 int init_continuation (TYPE_1__*,int ) ;
 int invalidate_complete (struct dm_cache_migration*,int) ;
 int invalidate_remove ;
 int oblock_succ (int ) ;
 int queue_work (int ,int *) ;
 int quiesce (struct dm_cache_migration*,int ) ;

__attribute__((used)) static int invalidate_lock(struct dm_cache_migration *mg)
{
 int r;
 struct dm_cell_key_v2 key;
 struct cache *cache = mg->cache;
 struct dm_bio_prison_cell_v2 *prealloc;

 prealloc = alloc_prison_cell(cache);

 build_key(mg->invalidate_oblock, oblock_succ(mg->invalidate_oblock), &key);
 r = dm_cell_lock_v2(cache->prison, &key,
       READ_WRITE_LOCK_LEVEL, prealloc, &mg->cell);
 if (r < 0) {
  free_prison_cell(cache, prealloc);
  invalidate_complete(mg, 0);
  return r;
 }

 if (mg->cell != prealloc)
  free_prison_cell(cache, prealloc);

 if (r)
  quiesce(mg, invalidate_remove);

 else {




  init_continuation(&mg->k, invalidate_remove);
  queue_work(cache->wq, &mg->k.ws);
 }

 return 0;
}
