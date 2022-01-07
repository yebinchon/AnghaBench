
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icc_node {int dummy; } ;


 int icc_lock ;
 struct icc_node* icc_node_create_nolock (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct icc_node *icc_node_create(int id)
{
 struct icc_node *node;

 mutex_lock(&icc_lock);

 node = icc_node_create_nolock(id);

 mutex_unlock(&icc_lock);

 return node;
}
