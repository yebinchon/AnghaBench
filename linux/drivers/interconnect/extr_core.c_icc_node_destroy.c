
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icc_node {int req_list; int id; } ;


 int WARN_ON (int) ;
 int hlist_empty (int *) ;
 int icc_idr ;
 int icc_lock ;
 int idr_remove (int *,int ) ;
 int kfree (struct icc_node*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct icc_node* node_find (int) ;

void icc_node_destroy(int id)
{
 struct icc_node *node;

 mutex_lock(&icc_lock);

 node = node_find(id);
 if (node) {
  idr_remove(&icc_idr, node->id);
  WARN_ON(!hlist_empty(&node->req_list));
 }

 mutex_unlock(&icc_lock);

 kfree(node);
}
