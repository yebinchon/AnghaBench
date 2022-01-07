
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int net; } ;
struct TYPE_6__ {TYPE_1__ dev_addr; } ;
struct TYPE_7__ {TYPE_2__ addr; } ;
struct TYPE_8__ {TYPE_3__ route; } ;
struct rdma_id_private {TYPE_4__ id; } ;
struct rdma_bind_list {int ps; unsigned short port; } ;
typedef enum rdma_ucm_port_space { ____Placeholder_rdma_ucm_port_space } rdma_ucm_port_space ;


 int EADDRNOTAVAIL ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int cma_bind_port (struct rdma_bind_list*,struct rdma_id_private*) ;
 int cma_ps_alloc (int ,int,struct rdma_bind_list*,unsigned short) ;
 int kfree (struct rdma_bind_list*) ;
 struct rdma_bind_list* kzalloc (int,int ) ;

__attribute__((used)) static int cma_alloc_port(enum rdma_ucm_port_space ps,
     struct rdma_id_private *id_priv, unsigned short snum)
{
 struct rdma_bind_list *bind_list;
 int ret;

 bind_list = kzalloc(sizeof *bind_list, GFP_KERNEL);
 if (!bind_list)
  return -ENOMEM;

 ret = cma_ps_alloc(id_priv->id.route.addr.dev_addr.net, ps, bind_list,
      snum);
 if (ret < 0)
  goto err;

 bind_list->ps = ps;
 bind_list->port = snum;
 cma_bind_port(bind_list, id_priv);
 return 0;
err:
 kfree(bind_list);
 return ret == -ENOSPC ? -EADDRNOTAVAIL : ret;
}
