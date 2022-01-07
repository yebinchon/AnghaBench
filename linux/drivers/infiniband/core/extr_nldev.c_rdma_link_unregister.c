
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_link_ops {int list; } ;


 int down_write (int *) ;
 int link_ops_rwsem ;
 int list_del (int *) ;
 int up_write (int *) ;

void rdma_link_unregister(struct rdma_link_ops *ops)
{
 down_write(&link_ops_rwsem);
 list_del(&ops->list);
 up_write(&link_ops_rwsem);
}
