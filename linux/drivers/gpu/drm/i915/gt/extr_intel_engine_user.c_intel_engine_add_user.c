
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct llist_node {int dummy; } ;
struct llist_head {int dummy; } ;
struct intel_engine_cs {TYPE_1__* i915; int uabi_node; } ;
struct TYPE_2__ {int uabi_engines; } ;


 int llist_add (struct llist_node*,struct llist_head*) ;

void intel_engine_add_user(struct intel_engine_cs *engine)
{
 llist_add((struct llist_node *)&engine->uabi_node,
    (struct llist_head *)&engine->i915->uabi_engines);
}
