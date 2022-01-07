
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {unsigned int nr_levels; unsigned int* target_count; int es; struct ilist* qs; } ;
struct ilist {unsigned int nr_elts; } ;
struct entry {unsigned int level; } ;


 struct entry* __redist_pop_from (struct queue*,unsigned int) ;
 int l_add_tail (int ,struct ilist*,struct entry*) ;
 struct entry* l_pop_tail (int ,struct ilist*) ;
 int q_set_targets (struct queue*) ;

__attribute__((used)) static void q_redistribute(struct queue *q)
{
 unsigned target, level;
 struct ilist *l, *l_above;
 struct entry *e;

 q_set_targets(q);

 for (level = 0u; level < q->nr_levels - 1u; level++) {
  l = q->qs + level;
  target = q->target_count[level];




  while (l->nr_elts < target) {
   e = __redist_pop_from(q, level + 1u);
   if (!e) {

    break;
   }

   e->level = level;
   l_add_tail(q->es, l, e);
  }




  l_above = q->qs + level + 1u;
  while (l->nr_elts > target) {
   e = l_pop_tail(q->es, l);

   if (!e)

    break;

   e->level = level + 1u;
   l_add_tail(q->es, l_above, e);
  }
 }
}
