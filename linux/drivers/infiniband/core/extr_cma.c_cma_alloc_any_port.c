
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct net* net; } ;
struct TYPE_6__ {TYPE_1__ dev_addr; } ;
struct TYPE_7__ {TYPE_2__ addr; } ;
struct TYPE_8__ {TYPE_3__ route; } ;
struct rdma_id_private {TYPE_4__ id; } ;
struct rdma_bind_list {int dummy; } ;
struct net {int dummy; } ;
typedef enum rdma_ucm_port_space { ____Placeholder_rdma_ucm_port_space } rdma_ucm_port_space ;


 int EADDRNOTAVAIL ;
 int cma_alloc_port (int,struct rdma_id_private*,unsigned int) ;
 int cma_bind_port (struct rdma_bind_list*,struct rdma_id_private*) ;
 int cma_port_is_unique (struct rdma_bind_list*,struct rdma_id_private*) ;
 struct rdma_bind_list* cma_ps_find (struct net*,int,unsigned short) ;
 int inet_get_local_port_range (struct net*,int*,int*) ;
 int prandom_u32 () ;

__attribute__((used)) static int cma_alloc_any_port(enum rdma_ucm_port_space ps,
         struct rdma_id_private *id_priv)
{
 static unsigned int last_used_port;
 int low, high, remaining;
 unsigned int rover;
 struct net *net = id_priv->id.route.addr.dev_addr.net;

 inet_get_local_port_range(net, &low, &high);
 remaining = (high - low) + 1;
 rover = prandom_u32() % remaining + low;
retry:
 if (last_used_port != rover) {
  struct rdma_bind_list *bind_list;
  int ret;

  bind_list = cma_ps_find(net, ps, (unsigned short)rover);

  if (!bind_list) {
   ret = cma_alloc_port(ps, id_priv, rover);
  } else {
   ret = cma_port_is_unique(bind_list, id_priv);
   if (!ret)
    cma_bind_port(bind_list, id_priv);
  }




  if (!ret)
   last_used_port = rover;
  if (ret != -EADDRNOTAVAIL)
   return ret;
 }
 if (--remaining) {
  rover++;
  if ((rover < low) || (rover > high))
   rover = low;
  goto retry;
 }
 return -EADDRNOTAVAIL;
}
