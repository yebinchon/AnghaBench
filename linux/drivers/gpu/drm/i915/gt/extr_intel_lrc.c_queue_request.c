
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;
struct i915_sched_node {int link; } ;


 int GEM_BUG_ON (int) ;
 int i915_sched_lookup_priolist (struct intel_engine_cs*,int) ;
 int list_add_tail (int *,int ) ;
 int list_empty (int *) ;

__attribute__((used)) static void queue_request(struct intel_engine_cs *engine,
     struct i915_sched_node *node,
     int prio)
{
 GEM_BUG_ON(!list_empty(&node->link));
 list_add_tail(&node->link, i915_sched_lookup_priolist(engine, prio));
}
