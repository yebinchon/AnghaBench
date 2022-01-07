
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {scalar_t__ qs; int es; int nr_elts; } ;
struct entry {scalar_t__ level; int sentinel; int pending_work; } ;


 int BUG_ON (int ) ;
 int l_add_head (int ,scalar_t__,struct entry*) ;

__attribute__((used)) static void q_push_front(struct queue *q, struct entry *e)
{
 BUG_ON(e->pending_work);

 if (!e->sentinel)
  q->nr_elts++;

 l_add_head(q->es, q->qs + e->level, e);
}
