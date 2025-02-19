
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {scalar_t__ last_target_nr_elts; scalar_t__ nr_elts; scalar_t__ nr_top_levels; scalar_t__ nr_levels; scalar_t__ nr_in_top_levels; } ;


 int q_set_targets_subrange_ (struct queue*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void q_set_targets(struct queue *q)
{
 if (q->last_target_nr_elts == q->nr_elts)
  return;

 q->last_target_nr_elts = q->nr_elts;

 if (q->nr_top_levels > q->nr_levels)
  q_set_targets_subrange_(q, q->nr_elts, 0, q->nr_levels);

 else {
  q_set_targets_subrange_(q, q->nr_in_top_levels,
     q->nr_levels - q->nr_top_levels, q->nr_levels);

  if (q->nr_in_top_levels < q->nr_elts)
   q_set_targets_subrange_(q, q->nr_elts - q->nr_in_top_levels,
      0, q->nr_levels - q->nr_top_levels);
  else
   q_set_targets_subrange_(q, 0, 0, q->nr_levels - q->nr_top_levels);
 }
}
