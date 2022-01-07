
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nr_levels; } ;
struct smq_policy {TYPE_1__ dirty; int bg_work; } ;
struct policy_work {int cblock; int oblock; int op; } ;
struct entry {int oblock; } ;


 int POLICY_WRITEBACK ;
 int btracker_queue (int ,struct policy_work*,int *) ;
 int clear_pending (struct smq_policy*,struct entry*) ;
 int infer_cblock (struct smq_policy*,struct entry*) ;
 int mark_pending (struct smq_policy*,struct entry*) ;
 int q_del (TYPE_1__*,struct entry*) ;
 struct entry* q_peek (TYPE_1__*,int ,int) ;
 int q_push_front (TYPE_1__*,struct entry*) ;

__attribute__((used)) static void queue_writeback(struct smq_policy *mq, bool idle)
{
 int r;
 struct policy_work work;
 struct entry *e;

 e = q_peek(&mq->dirty, mq->dirty.nr_levels, idle);
 if (e) {
  mark_pending(mq, e);
  q_del(&mq->dirty, e);

  work.op = POLICY_WRITEBACK;
  work.oblock = e->oblock;
  work.cblock = infer_cblock(mq, e);

  r = btracker_queue(mq->bg_work, &work, ((void*)0));
  if (r) {
   clear_pending(mq, e);
   q_push_front(&mq->dirty, e);
  }
 }
}
