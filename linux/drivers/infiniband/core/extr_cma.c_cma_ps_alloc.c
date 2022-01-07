
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;
struct rdma_bind_list {int dummy; } ;
struct net {int dummy; } ;
typedef enum rdma_ucm_port_space { ____Placeholder_rdma_ucm_port_space } rdma_ucm_port_space ;


 int GFP_KERNEL ;
 struct xarray* cma_pernet_xa (struct net*,int) ;
 int xa_insert (struct xarray*,int,struct rdma_bind_list*,int ) ;

__attribute__((used)) static int cma_ps_alloc(struct net *net, enum rdma_ucm_port_space ps,
   struct rdma_bind_list *bind_list, int snum)
{
 struct xarray *xa = cma_pernet_xa(net, ps);

 return xa_insert(xa, snum, bind_list, GFP_KERNEL);
}
