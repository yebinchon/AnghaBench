
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int clean; int dirty; } ;
struct entry {scalar_t__ dirty; } ;


 int q_push_front (int *,struct entry*) ;

__attribute__((used)) static void push_queue_front(struct smq_policy *mq, struct entry *e)
{
 if (e->dirty)
  q_push_front(&mq->dirty, e);
 else
  q_push_front(&mq->clean, e);
}
