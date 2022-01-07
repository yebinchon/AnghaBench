
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct active_node {scalar_t__ timeline; int base; } ;


 int i915_active_request_isset (int *) ;

__attribute__((used)) static inline bool is_idle_barrier(struct active_node *node, u64 idx)
{
 return node->timeline == idx && !i915_active_request_isset(&node->base);
}
