
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int nr_elts; scalar_t__ qs; int es; } ;
struct entry {int sentinel; scalar_t__ level; } ;


 int l_del (int ,scalar_t__,struct entry*) ;

__attribute__((used)) static void q_del(struct queue *q, struct entry *e)
{
 l_del(q->es, q->qs + e->level, e);
 if (!e->sentinel)
  q->nr_elts--;
}
