
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icc_node {int node_list; } ;


 int icc_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void icc_node_del(struct icc_node *node)
{
 mutex_lock(&icc_lock);

 list_del(&node->node_list);

 mutex_unlock(&icc_lock);
}
