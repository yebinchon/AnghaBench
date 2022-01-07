
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct sockaddr_ib {int sib_addr; } ;
struct TYPE_4__ {int dst_addr; int dev_addr; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct TYPE_6__ {TYPE_2__ route; } ;
struct rdma_id_private {TYPE_3__ id; int cma_dev; } ;
struct cma_work {int work; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cma_init_resolve_addr_work (struct cma_work*,struct rdma_id_private*) ;
 int cma_resolve_ib_dev (struct rdma_id_private*) ;
 int cma_wq ;
 int kfree (struct cma_work*) ;
 struct cma_work* kzalloc (int,int ) ;
 int queue_work (int ,int *) ;
 int rdma_addr_set_dgid (int *,union ib_gid*) ;

__attribute__((used)) static int cma_resolve_ib_addr(struct rdma_id_private *id_priv)
{
 struct cma_work *work;
 int ret;

 work = kzalloc(sizeof *work, GFP_KERNEL);
 if (!work)
  return -ENOMEM;

 if (!id_priv->cma_dev) {
  ret = cma_resolve_ib_dev(id_priv);
  if (ret)
   goto err;
 }

 rdma_addr_set_dgid(&id_priv->id.route.addr.dev_addr, (union ib_gid *)
  &(((struct sockaddr_ib *) &id_priv->id.route.addr.dst_addr)->sib_addr));

 cma_init_resolve_addr_work(work, id_priv);
 queue_work(cma_wq, &work->work);
 return 0;
err:
 kfree(work);
 return ret;
}
