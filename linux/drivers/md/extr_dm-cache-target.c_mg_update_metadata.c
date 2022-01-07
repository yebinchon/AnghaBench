
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct policy_work {int op; int cblock; int oblock; } ;
struct dm_cache_migration {int k; struct policy_work* op; struct cache* cache; } ;
struct cache {int committer; int cmd; } ;


 int DMERR_LIMIT (char*,int ) ;



 int cache_device_name (struct cache*) ;
 int continue_after_commit (int *,int *) ;
 int dm_cache_insert_mapping (int ,int ,int ) ;
 int dm_cache_remove_mapping (int ,int ) ;
 int init_continuation (int *,int ) ;
 int metadata_operation_failed (struct cache*,char*,int) ;
 int mg_complete (struct dm_cache_migration*,int) ;
 int mg_success ;
 int schedule_commit (int *) ;
 struct dm_cache_migration* ws_to_mg (struct work_struct*) ;

__attribute__((used)) static void mg_update_metadata(struct work_struct *ws)
{
 int r;
 struct dm_cache_migration *mg = ws_to_mg(ws);
 struct cache *cache = mg->cache;
 struct policy_work *op = mg->op;

 switch (op->op) {
 case 129:
  r = dm_cache_insert_mapping(cache->cmd, op->cblock, op->oblock);
  if (r) {
   DMERR_LIMIT("%s: migration failed; couldn't insert mapping",
        cache_device_name(cache));
   metadata_operation_failed(cache, "dm_cache_insert_mapping", r);

   mg_complete(mg, 0);
   return;
  }
  mg_complete(mg, 1);
  break;

 case 130:
  r = dm_cache_remove_mapping(cache->cmd, op->cblock);
  if (r) {
   DMERR_LIMIT("%s: migration failed; couldn't update on disk metadata",
        cache_device_name(cache));
   metadata_operation_failed(cache, "dm_cache_remove_mapping", r);

   mg_complete(mg, 0);
   return;
  }
  init_continuation(&mg->k, mg_success);
  continue_after_commit(&cache->committer, &mg->k);
  schedule_commit(&cache->committer);
  break;

 case 128:
  mg_complete(mg, 1);
  break;
 }
}
