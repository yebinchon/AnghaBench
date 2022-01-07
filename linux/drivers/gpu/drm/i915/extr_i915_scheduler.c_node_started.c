
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sched_node {int dummy; } ;


 int i915_request_started (int ) ;
 int node_to_request (struct i915_sched_node const*) ;

__attribute__((used)) static inline bool node_started(const struct i915_sched_node *node)
{
 return i915_request_started(node_to_request(node));
}
