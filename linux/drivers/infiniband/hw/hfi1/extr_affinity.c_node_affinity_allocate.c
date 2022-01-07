
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_affinity_node {int node; int list; int comp_vect_affinity; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int alloc_percpu (int ) ;
 struct hfi1_affinity_node* kzalloc (int,int ) ;
 int u16 ;

__attribute__((used)) static struct hfi1_affinity_node *node_affinity_allocate(int node)
{
 struct hfi1_affinity_node *entry;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return ((void*)0);
 entry->node = node;
 entry->comp_vect_affinity = alloc_percpu(u16);
 INIT_LIST_HEAD(&entry->list);

 return entry;
}
