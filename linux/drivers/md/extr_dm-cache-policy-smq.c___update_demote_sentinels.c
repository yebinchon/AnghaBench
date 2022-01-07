
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {unsigned int nr_levels; } ;
struct smq_policy {struct queue clean; } ;
struct entry {int dummy; } ;


 struct entry* demote_sentinel (struct smq_policy*,unsigned int) ;
 int q_del (struct queue*,struct entry*) ;
 int q_push (struct queue*,struct entry*) ;

__attribute__((used)) static void __update_demote_sentinels(struct smq_policy *mq)
{
 unsigned level;
 struct queue *q = &mq->clean;
 struct entry *sentinel;

 for (level = 0; level < q->nr_levels; level++) {
  sentinel = demote_sentinel(mq, level);
  q_del(q, sentinel);
  q_push(q, sentinel);
 }
}
