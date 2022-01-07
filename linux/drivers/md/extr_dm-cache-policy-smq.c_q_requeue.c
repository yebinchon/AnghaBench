
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {unsigned int nr_levels; int es; scalar_t__ qs; } ;
struct entry {unsigned int level; scalar_t__ sentinel; } ;


 struct entry* l_head (int ,scalar_t__) ;
 struct entry* l_next (int ,struct entry*) ;
 unsigned int min (unsigned int,unsigned int) ;
 int q_del (struct queue*,struct entry*) ;
 int q_push (struct queue*,struct entry*) ;
 int q_push_before (struct queue*,struct entry*,struct entry*) ;

__attribute__((used)) static void q_requeue(struct queue *q, struct entry *e, unsigned extra_levels,
        struct entry *s1, struct entry *s2)
{
 struct entry *de;
 unsigned sentinels_passed = 0;
 unsigned new_level = min(q->nr_levels - 1u, e->level + extra_levels);


 if (extra_levels && (e->level < q->nr_levels - 1u)) {
  for (de = l_head(q->es, q->qs + new_level); de && de->sentinel; de = l_next(q->es, de))
   sentinels_passed++;

  if (de) {
   q_del(q, de);
   de->level = e->level;
   if (s1) {
    switch (sentinels_passed) {
    case 0:
     q_push_before(q, s1, de);
     break;

    case 1:
     q_push_before(q, s2, de);
     break;

    default:
     q_push(q, de);
    }
   } else
    q_push(q, de);
  }
 }

 q_del(q, e);
 e->level = new_level;
 q_push(q, e);
}
