
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int priority; } ;
struct i915_sched_node {scalar_t__ flags; scalar_t__ semaphores; TYPE_1__ attr; int link; int waiters_list; int signalers_list; } ;


 int I915_PRIORITY_INVALID ;
 int INIT_LIST_HEAD (int *) ;

void i915_sched_node_init(struct i915_sched_node *node)
{
 INIT_LIST_HEAD(&node->signalers_list);
 INIT_LIST_HEAD(&node->waiters_list);
 INIT_LIST_HEAD(&node->link);
 node->attr.priority = I915_PRIORITY_INVALID;
 node->semaphores = 0;
 node->flags = 0;
}
