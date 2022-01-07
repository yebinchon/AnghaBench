
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rdma_id_private {struct rdma_bind_list* bind_list; } ;
struct TYPE_4__ {TYPE_1__* first; } ;
struct rdma_bind_list {TYPE_2__ owners; } ;
struct TYPE_3__ {scalar_t__ next; } ;


 int cma_check_port (struct rdma_bind_list*,struct rdma_id_private*,int ) ;
 int lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cma_bind_listen(struct rdma_id_private *id_priv)
{
 struct rdma_bind_list *bind_list = id_priv->bind_list;
 int ret = 0;

 mutex_lock(&lock);
 if (bind_list->owners.first->next)
  ret = cma_check_port(bind_list, id_priv, 0);
 mutex_unlock(&lock);
 return ret;
}
