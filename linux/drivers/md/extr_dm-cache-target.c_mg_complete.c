
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct policy_work {int op; int oblock; int cblock; } ;
struct TYPE_3__ {int input; } ;
struct dm_cache_migration {scalar_t__ cell; TYPE_2__* overwrite_bio; TYPE_1__ k; struct policy_work* op; struct cache* cache; } ;
struct cache {int prison; int policy; int stats; } ;
struct bio_list {int dummy; } ;
typedef int dm_cblock_t ;
struct TYPE_4__ {int bi_status; } ;


 int BLK_STS_IOERR ;



 int background_work_end (struct cache*) ;
 int bio_endio (TYPE_2__*) ;
 int bio_list_init (struct bio_list*) ;
 int clear_discard (struct cache*,int ) ;
 int dec_io_migrations (struct cache*) ;
 int defer_bios (struct cache*,struct bio_list*) ;
 scalar_t__ dm_cell_unlock_v2 (int ,scalar_t__,struct bio_list*) ;
 int force_clear_dirty (struct cache*,int ) ;
 int force_set_dirty (struct cache*,int ) ;
 int free_migration (struct dm_cache_migration*) ;
 int free_prison_cell (struct cache*,scalar_t__) ;
 int oblock_to_dblock (struct cache*,int ) ;
 int policy_complete_background_work (int ,struct policy_work*,int) ;
 int update_stats (int *,int) ;
 int wake_migration_worker (struct cache*) ;

__attribute__((used)) static void mg_complete(struct dm_cache_migration *mg, bool success)
{
 struct bio_list bios;
 struct cache *cache = mg->cache;
 struct policy_work *op = mg->op;
 dm_cblock_t cblock = op->cblock;

 if (success)
  update_stats(&cache->stats, op->op);

 switch (op->op) {
 case 129:
  clear_discard(cache, oblock_to_dblock(cache, op->oblock));
  policy_complete_background_work(cache->policy, op, success);

  if (mg->overwrite_bio) {
   if (success)
    force_set_dirty(cache, cblock);
   else if (mg->k.input)
    mg->overwrite_bio->bi_status = mg->k.input;
   else
    mg->overwrite_bio->bi_status = BLK_STS_IOERR;
   bio_endio(mg->overwrite_bio);
  } else {
   if (success)
    force_clear_dirty(cache, cblock);
   dec_io_migrations(cache);
  }
  break;

 case 130:



  if (success)
   force_clear_dirty(cache, cblock);
  policy_complete_background_work(cache->policy, op, success);
  dec_io_migrations(cache);
  break;

 case 128:
  if (success)
   force_clear_dirty(cache, cblock);
  policy_complete_background_work(cache->policy, op, success);
  dec_io_migrations(cache);
  break;
 }

 bio_list_init(&bios);
 if (mg->cell) {
  if (dm_cell_unlock_v2(cache->prison, mg->cell, &bios))
   free_prison_cell(cache, mg->cell);
 }

 free_migration(mg);
 defer_bios(cache, &bios);
 wake_migration_worker(cache);

 background_work_end(cache);
}
