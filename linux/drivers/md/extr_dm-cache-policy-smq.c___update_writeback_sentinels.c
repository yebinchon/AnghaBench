
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {unsigned int nr_levels; } ;
struct smq_policy {struct queue dirty; } ;
struct entry {int dummy; } ;


 int q_del (struct queue*,struct entry*) ;
 int q_push (struct queue*,struct entry*) ;
 struct entry* writeback_sentinel (struct smq_policy*,unsigned int) ;

__attribute__((used)) static void __update_writeback_sentinels(struct smq_policy *mq)
{
 unsigned level;
 struct queue *q = &mq->dirty;
 struct entry *sentinel;

 for (level = 0; level < q->nr_levels; level++) {
  sentinel = writeback_sentinel(mq, level);
  q_del(q, sentinel);
  q_push(q, sentinel);
 }
}
