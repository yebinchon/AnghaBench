
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;
struct active_node {int base; } ;


 int GEM_BUG_ON (int) ;
 struct intel_engine_cs* __barrier_to_engine (struct active_node*) ;
 int is_barrier (int *) ;

__attribute__((used)) static inline struct intel_engine_cs *
barrier_to_engine(struct active_node *node)
{
 GEM_BUG_ON(!is_barrier(&node->base));
 return __barrier_to_engine(node);
}
