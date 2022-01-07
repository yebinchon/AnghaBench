
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int cache_stats; int table; } ;
struct policy_work {int dummy; } ;
struct entry {int level; } ;
typedef enum promote_result { ____Placeholder_promote_result } promote_result ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;


 int ENOENT ;
 int PROMOTE_NOT ;
 struct entry* h_lookup (int *,int ) ;
 int infer_cblock (struct smq_policy*,struct entry*) ;
 int queue_promotion (struct smq_policy*,int ,struct policy_work**) ;
 int requeue (struct smq_policy*,struct entry*) ;
 int should_promote (struct smq_policy*,struct entry*,int,int) ;
 int stats_level_accessed (int *,int ) ;
 int stats_miss (int *) ;
 struct entry* update_hotspot_queue (struct smq_policy*,int ) ;

__attribute__((used)) static int __lookup(struct smq_policy *mq, dm_oblock_t oblock, dm_cblock_t *cblock,
      int data_dir, bool fast_copy,
      struct policy_work **work, bool *background_work)
{
 struct entry *e, *hs_e;
 enum promote_result pr;

 *background_work = 0;

 e = h_lookup(&mq->table, oblock);
 if (e) {
  stats_level_accessed(&mq->cache_stats, e->level);

  requeue(mq, e);
  *cblock = infer_cblock(mq, e);
  return 0;

 } else {
  stats_miss(&mq->cache_stats);




  hs_e = update_hotspot_queue(mq, oblock);

  pr = should_promote(mq, hs_e, data_dir, fast_copy);
  if (pr != PROMOTE_NOT) {
   queue_promotion(mq, oblock, work);
   *background_work = 1;
  }

  return -ENOENT;
 }
}
