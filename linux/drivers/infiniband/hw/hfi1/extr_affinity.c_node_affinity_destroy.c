
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_affinity_node {int comp_vect_affinity; } ;


 int free_percpu (int ) ;
 int kfree (struct hfi1_affinity_node*) ;

__attribute__((used)) static void node_affinity_destroy(struct hfi1_affinity_node *entry)
{
 free_percpu(entry->comp_vect_affinity);
 kfree(entry);
}
