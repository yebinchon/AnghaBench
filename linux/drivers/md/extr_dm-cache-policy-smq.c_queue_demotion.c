
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nr_levels; } ;
struct smq_policy {TYPE_1__ clean; int bg_work; int migrations_allowed; } ;
struct policy_work {int cblock; int oblock; int op; } ;
struct entry {int oblock; } ;


 int POLICY_DEMOTE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int btracker_queue (int ,struct policy_work*,int *) ;
 int clean_target_met (struct smq_policy*,int) ;
 int clear_pending (struct smq_policy*,struct entry*) ;
 int infer_cblock (struct smq_policy*,struct entry*) ;
 int mark_pending (struct smq_policy*,struct entry*) ;
 int q_del (TYPE_1__*,struct entry*) ;
 struct entry* q_peek (TYPE_1__*,int,int) ;
 int q_push_front (TYPE_1__*,struct entry*) ;
 int queue_writeback (struct smq_policy*,int) ;

__attribute__((used)) static void queue_demotion(struct smq_policy *mq)
{
 int r;
 struct policy_work work;
 struct entry *e;

 if (WARN_ON_ONCE(!mq->migrations_allowed))
  return;

 e = q_peek(&mq->clean, mq->clean.nr_levels / 2, 1);
 if (!e) {
  if (!clean_target_met(mq, 1))
   queue_writeback(mq, 0);
  return;
 }

 mark_pending(mq, e);
 q_del(&mq->clean, e);

 work.op = POLICY_DEMOTE;
 work.oblock = e->oblock;
 work.cblock = infer_cblock(mq, e);
 r = btracker_queue(mq->bg_work, &work, ((void*)0));
 if (r) {
  clear_pending(mq, e);
  q_push_front(&mq->clean, e);
 }
}
