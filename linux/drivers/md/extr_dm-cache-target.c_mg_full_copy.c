
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct policy_work {int oblock; int cblock; int op; } ;
struct dm_cache_migration {int k; struct policy_work* op; struct cache* cache; } ;
struct cache {int dummy; } ;


 int POLICY_PROMOTE ;
 int copy (struct dm_cache_migration*,int) ;
 int init_continuation (int *,int (*) (struct work_struct*)) ;
 int is_dirty (struct cache*,int ) ;
 scalar_t__ is_discarded_oblock (struct cache*,int ) ;
 int mg_upgrade_lock (struct work_struct*) ;
 struct dm_cache_migration* ws_to_mg (struct work_struct*) ;

__attribute__((used)) static void mg_full_copy(struct work_struct *ws)
{
 struct dm_cache_migration *mg = ws_to_mg(ws);
 struct cache *cache = mg->cache;
 struct policy_work *op = mg->op;
 bool is_policy_promote = (op->op == POLICY_PROMOTE);

 if ((!is_policy_promote && !is_dirty(cache, op->cblock)) ||
     is_discarded_oblock(cache, op->oblock)) {
  mg_upgrade_lock(ws);
  return;
 }

 init_continuation(&mg->k, mg_upgrade_lock);
 copy(mg, is_policy_promote);
}
