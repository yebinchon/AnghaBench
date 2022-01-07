
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int es; scalar_t__ qs; int nr_levels; } ;
struct entry {scalar_t__ sentinel; } ;


 struct entry* l_head (int ,scalar_t__) ;
 struct entry* l_next (int ,struct entry*) ;
 unsigned int min (unsigned int,int ) ;

__attribute__((used)) static struct entry *q_peek(struct queue *q, unsigned max_level, bool can_cross_sentinel)
{
 unsigned level;
 struct entry *e;

 max_level = min(max_level, q->nr_levels);

 for (level = 0; level < max_level; level++)
  for (e = l_head(q->es, q->qs + level); e; e = l_next(q->es, e)) {
   if (e->sentinel) {
    if (can_cross_sentinel)
     continue;
    else
     break;
   }

   return e;
  }

 return ((void*)0);
}
