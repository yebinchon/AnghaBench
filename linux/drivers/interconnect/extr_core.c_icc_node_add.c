
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icc_provider {int nodes; } ;
struct icc_node {int node_list; struct icc_provider* provider; } ;


 int icc_lock ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void icc_node_add(struct icc_node *node, struct icc_provider *provider)
{
 mutex_lock(&icc_lock);

 node->provider = provider;
 list_add_tail(&node->node_list, &provider->nodes);

 mutex_unlock(&icc_lock);
}
