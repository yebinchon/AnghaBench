
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct dm_cache_migration {int * overwrite_bio; int invalidate_oblock; int k; int invalidate_cblock; struct cache* cache; } ;
struct cache {int committer; } ;


 int continue_after_commit (int *,int *) ;
 int init_continuation (int *,int ) ;
 int invalidate_cblock (struct cache*,int ) ;
 int invalidate_complete (struct dm_cache_migration*,int) ;
 int invalidate_completed ;
 int remap_to_origin_clear_discard (struct cache*,int *,int ) ;
 int schedule_commit (int *) ;
 struct dm_cache_migration* ws_to_mg (struct work_struct*) ;

__attribute__((used)) static void invalidate_remove(struct work_struct *ws)
{
 int r;
 struct dm_cache_migration *mg = ws_to_mg(ws);
 struct cache *cache = mg->cache;

 r = invalidate_cblock(cache, mg->invalidate_cblock);
 if (r) {
  invalidate_complete(mg, 0);
  return;
 }

 init_continuation(&mg->k, invalidate_completed);
 continue_after_commit(&cache->committer, &mg->k);
 remap_to_origin_clear_discard(cache, mg->overwrite_bio, mg->invalidate_oblock);
 mg->overwrite_bio = ((void*)0);
 schedule_commit(&cache->committer);
}
