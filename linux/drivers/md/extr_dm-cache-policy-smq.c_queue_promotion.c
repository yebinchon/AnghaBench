
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int cache_alloc; int bg_work; int migrations_allowed; } ;
struct policy_work {int cblock; int oblock; int op; } ;
struct entry {int pending_work; } ;
typedef int dm_oblock_t ;


 int BUG_ON (int) ;
 int POLICY_PROMOTE ;
 struct entry* alloc_entry (int *) ;
 scalar_t__ allocator_empty (int *) ;
 scalar_t__ btracker_promotion_already_present (int ,int ) ;
 int btracker_queue (int ,struct policy_work*,struct policy_work**) ;
 int free_entry (int *,struct entry*) ;
 int free_target_met (struct smq_policy*) ;
 int infer_cblock (struct smq_policy*,struct entry*) ;
 int queue_demotion (struct smq_policy*) ;

__attribute__((used)) static void queue_promotion(struct smq_policy *mq, dm_oblock_t oblock,
       struct policy_work **workp)
{
 int r;
 struct entry *e;
 struct policy_work work;

 if (!mq->migrations_allowed)
  return;

 if (allocator_empty(&mq->cache_alloc)) {




  if (!free_target_met(mq))
   queue_demotion(mq);
  return;
 }

 if (btracker_promotion_already_present(mq->bg_work, oblock))
  return;





 e = alloc_entry(&mq->cache_alloc);
 BUG_ON(!e);
 e->pending_work = 1;
 work.op = POLICY_PROMOTE;
 work.oblock = oblock;
 work.cblock = infer_cblock(mq, e);
 r = btracker_queue(mq->bg_work, &work, workp);
 if (r)
  free_entry(&mq->cache_alloc, e);
}
