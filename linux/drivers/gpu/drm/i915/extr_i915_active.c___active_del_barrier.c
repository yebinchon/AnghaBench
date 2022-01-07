
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_active {int dummy; } ;
struct active_node {int dummy; } ;


 int ____active_del_barrier (struct i915_active*,struct active_node*,int ) ;
 int barrier_to_engine (struct active_node*) ;

__attribute__((used)) static bool
__active_del_barrier(struct i915_active *ref, struct active_node *node)
{
 return ____active_del_barrier(ref, node, barrier_to_engine(node));
}
