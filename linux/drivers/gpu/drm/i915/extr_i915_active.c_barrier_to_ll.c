
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct llist_node {int dummy; } ;
struct TYPE_2__ {int link; } ;
struct active_node {TYPE_1__ base; } ;


 int GEM_BUG_ON (int) ;
 int is_barrier (TYPE_1__*) ;

__attribute__((used)) static inline struct llist_node *barrier_to_ll(struct active_node *node)
{
 GEM_BUG_ON(!is_barrier(&node->base));
 return (struct llist_node *)&node->base.link;
}
