
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;
struct net {int dummy; } ;
struct cma_pernet {struct xarray ib_ps; struct xarray ipoib_ps; struct xarray udp_ps; struct xarray tcp_ps; } ;
typedef enum rdma_ucm_port_space { ____Placeholder_rdma_ucm_port_space } rdma_ucm_port_space ;






 struct cma_pernet* cma_pernet (struct net*) ;

__attribute__((used)) static
struct xarray *cma_pernet_xa(struct net *net, enum rdma_ucm_port_space ps)
{
 struct cma_pernet *pernet = cma_pernet(net);

 switch (ps) {
 case 129:
  return &pernet->tcp_ps;
 case 128:
  return &pernet->udp_ps;
 case 130:
  return &pernet->ipoib_ps;
 case 131:
  return &pernet->ib_ps;
 default:
  return ((void*)0);
 }
}
