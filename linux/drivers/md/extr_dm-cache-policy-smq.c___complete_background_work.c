
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int bg_work; int cache_alloc; int table; } ;
struct policy_work {int op; int oblock; int cblock; } ;
struct entry {int level; int oblock; } ;


 int NR_CACHE_LEVELS ;



 int btracker_complete (int ,struct policy_work*) ;
 int clear_pending (struct smq_policy*,struct entry*) ;
 int free_entry (int *,struct entry*) ;
 int from_cblock (int ) ;
 struct entry* get_entry (int *,int ) ;
 int h_remove (int *,struct entry*) ;
 int push (struct smq_policy*,struct entry*) ;
 int push_queue (struct smq_policy*,struct entry*) ;

__attribute__((used)) static void __complete_background_work(struct smq_policy *mq,
           struct policy_work *work,
           bool success)
{
 struct entry *e = get_entry(&mq->cache_alloc,
        from_cblock(work->cblock));

 switch (work->op) {
 case 129:

  clear_pending(mq, e);
  if (success) {
   e->oblock = work->oblock;
   e->level = NR_CACHE_LEVELS - 1;
   push(mq, e);

  } else {
   free_entry(&mq->cache_alloc, e);

  }
  break;

 case 130:

  if (success) {
   h_remove(&mq->table, e);
   free_entry(&mq->cache_alloc, e);

  } else {
   clear_pending(mq, e);
   push_queue(mq, e);

  }
  break;

 case 128:

  clear_pending(mq, e);
  push_queue(mq, e);

  break;
 }

 btracker_complete(mq->bg_work, work);
}
