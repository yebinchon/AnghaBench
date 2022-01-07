
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_cell_key_v2 {int dummy; } ;
struct TYPE_4__ {int ws; } ;
struct dm_cache_migration {TYPE_2__ k; struct dm_bio_prison_cell_v2* cell; scalar_t__ overwrite_bio; TYPE_1__* op; struct cache* cache; } ;
struct dm_bio_prison_cell_v2 {int dummy; } ;
struct cache {int prison; } ;
struct TYPE_3__ {int oblock; } ;


 int READ_WRITE_LOCK_LEVEL ;
 int WRITE_LOCK_LEVEL ;
 struct dm_bio_prison_cell_v2* alloc_prison_cell (struct cache*) ;
 int build_key (int ,int ,struct dm_cell_key_v2*) ;
 int dm_cell_lock_v2 (int ,struct dm_cell_key_v2*,int ,struct dm_bio_prison_cell_v2*,struct dm_bio_prison_cell_v2**) ;
 int free_prison_cell (struct cache*,struct dm_bio_prison_cell_v2*) ;
 int mg_complete (struct dm_cache_migration*,int) ;
 int mg_copy (int *) ;
 int oblock_succ (int ) ;
 int quiesce (struct dm_cache_migration*,int (*) (int *)) ;

__attribute__((used)) static int mg_lock_writes(struct dm_cache_migration *mg)
{
 int r;
 struct dm_cell_key_v2 key;
 struct cache *cache = mg->cache;
 struct dm_bio_prison_cell_v2 *prealloc;

 prealloc = alloc_prison_cell(cache);






 build_key(mg->op->oblock, oblock_succ(mg->op->oblock), &key);
 r = dm_cell_lock_v2(cache->prison, &key,
       mg->overwrite_bio ? READ_WRITE_LOCK_LEVEL : WRITE_LOCK_LEVEL,
       prealloc, &mg->cell);
 if (r < 0) {
  free_prison_cell(cache, prealloc);
  mg_complete(mg, 0);
  return r;
 }

 if (mg->cell != prealloc)
  free_prison_cell(cache, prealloc);

 if (r == 0)
  mg_copy(&mg->k.ws);
 else
  quiesce(mg, mg_copy);

 return 0;
}
