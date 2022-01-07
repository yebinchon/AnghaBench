
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int current_writeback_sentinels; int writeback_sentinel_alloc; int dirty; int clean; int cache_hit_bits; } ;
struct entry {int level; int dirty; scalar_t__ pending_work; } ;


 int from_cblock (int ) ;
 int * get_sentinel (int *,int ,int) ;
 int infer_cblock (struct smq_policy*,struct entry*) ;
 int q_requeue (int *,struct entry*,unsigned int,int *,int *) ;
 int test_and_set_bit (int ,int ) ;

__attribute__((used)) static void requeue(struct smq_policy *mq, struct entry *e)
{



 if (e->pending_work)
  return;

 if (!test_and_set_bit(from_cblock(infer_cblock(mq, e)), mq->cache_hit_bits)) {
  if (!e->dirty) {
   q_requeue(&mq->clean, e, 1u, ((void*)0), ((void*)0));
   return;
  }

  q_requeue(&mq->dirty, e, 1u,
     get_sentinel(&mq->writeback_sentinel_alloc, e->level, !mq->current_writeback_sentinels),
     get_sentinel(&mq->writeback_sentinel_alloc, e->level, mq->current_writeback_sentinels));
 }
}
