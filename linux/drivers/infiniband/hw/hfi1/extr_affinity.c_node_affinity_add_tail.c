
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_affinity_node {int list; } ;
struct TYPE_2__ {int list; } ;


 int list_add_tail (int *,int *) ;
 TYPE_1__ node_affinity ;

__attribute__((used)) static void node_affinity_add_tail(struct hfi1_affinity_node *entry)
{
 list_add_tail(&entry->list, &node_affinity.list);
}
