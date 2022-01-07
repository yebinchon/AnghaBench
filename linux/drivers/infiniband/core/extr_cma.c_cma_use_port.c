
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
struct rdma_id_private {int reuseaddr; TYPE_4__ id; } ;
struct rdma_bind_list {int dummy; } ;
typedef enum rdma_ucm_port_space { ____Placeholder_rdma_ucm_port_space } rdma_ucm_port_space ;


 int CAP_NET_BIND_SERVICE ;
 int EACCES ;
 unsigned short PROT_SOCK ;
 int capable (int ) ;
 int cma_alloc_port (int,struct rdma_id_private*,unsigned short) ;
 int cma_bind_port (struct rdma_bind_list*,struct rdma_id_private*) ;
 int cma_check_port (struct rdma_bind_list*,struct rdma_id_private*,int ) ;
 int cma_port (int ) ;
 struct rdma_bind_list* cma_ps_find (int ,int,unsigned short) ;
 int cma_src_addr (struct rdma_id_private*) ;
 unsigned short ntohs (int ) ;

__attribute__((used)) static int cma_use_port(enum rdma_ucm_port_space ps,
   struct rdma_id_private *id_priv)
{
 struct rdma_bind_list *bind_list;
 unsigned short snum;
 int ret;

 snum = ntohs(cma_port(cma_src_addr(id_priv)));
 if (snum < PROT_SOCK && !capable(CAP_NET_BIND_SERVICE))
  return -EACCES;

 bind_list = cma_ps_find(id_priv->id.route.addr.dev_addr.net, ps, snum);
 if (!bind_list) {
  ret = cma_alloc_port(ps, id_priv, snum);
 } else {
  ret = cma_check_port(bind_list, id_priv, id_priv->reuseaddr);
  if (!ret)
   cma_bind_port(bind_list, id_priv);
 }
 return ret;
}
