
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int table; } ;
struct entry {int pending_work; } ;


 int h_insert (int *,struct entry*) ;
 int push_queue (struct smq_policy*,struct entry*) ;

__attribute__((used)) static void push(struct smq_policy *mq, struct entry *e)
{
 h_insert(&mq->table, e);
 if (!e->pending_work)
  push_queue(mq, e);
}
