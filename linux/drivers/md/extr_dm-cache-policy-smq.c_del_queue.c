
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int clean; int dirty; } ;
struct entry {scalar_t__ dirty; } ;


 int q_del (int *,struct entry*) ;

__attribute__((used)) static void del_queue(struct smq_policy *mq, struct entry *e)
{
 q_del(e->dirty ? &mq->dirty : &mq->clean, e);
}
