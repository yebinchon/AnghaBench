
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {unsigned int nr_levels; unsigned int qs; int es; } ;
struct entry {unsigned int level; int sentinel; } ;


 int l_del (int ,unsigned int,struct entry*) ;
 struct entry* l_head (int ,unsigned int) ;
 struct entry* l_next (int ,struct entry*) ;

__attribute__((used)) static struct entry *__redist_pop_from(struct queue *q, unsigned level)
{
 struct entry *e;

 for (; level < q->nr_levels; level++)
  for (e = l_head(q->es, q->qs + level); e; e = l_next(q->es, e))
   if (!e->sentinel) {
    l_del(q->es, q->qs + e->level, e);
    return e;
   }

 return ((void*)0);
}
