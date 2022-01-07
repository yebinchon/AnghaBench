
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_link_ops {int list; int type; } ;


 scalar_t__ WARN_ON_ONCE (int ) ;
 int down_write (int *) ;
 int link_ops ;
 int link_ops_get (int ) ;
 int link_ops_rwsem ;
 int list_add (int *,int *) ;
 int up_write (int *) ;

void rdma_link_register(struct rdma_link_ops *ops)
{
 down_write(&link_ops_rwsem);
 if (WARN_ON_ONCE(link_ops_get(ops->type)))
  goto out;
 list_add(&ops->list, &link_ops);
out:
 up_write(&link_ops_rwsem);
}
