
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {unsigned int nr_levels; unsigned int* target_count; unsigned int last_target_nr_elts; unsigned int nr_top_levels; unsigned int nr_in_top_levels; scalar_t__ qs; scalar_t__ nr_elts; struct entry_space* es; } ;
struct entry_space {int dummy; } ;


 int l_init (scalar_t__) ;

__attribute__((used)) static void q_init(struct queue *q, struct entry_space *es, unsigned nr_levels)
{
 unsigned i;

 q->es = es;
 q->nr_elts = 0;
 q->nr_levels = nr_levels;

 for (i = 0; i < q->nr_levels; i++) {
  l_init(q->qs + i);
  q->target_count[i] = 0u;
 }

 q->last_target_nr_elts = 0u;
 q->nr_top_levels = 0u;
 q->nr_in_top_levels = 0u;
}
