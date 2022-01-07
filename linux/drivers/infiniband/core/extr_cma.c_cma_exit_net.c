
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct cma_pernet {int ib_ps; int ipoib_ps; int udp_ps; int tcp_ps; } ;


 int WARN_ON (int) ;
 struct cma_pernet* cma_pernet (struct net*) ;
 int xa_empty (int *) ;

__attribute__((used)) static void cma_exit_net(struct net *net)
{
 struct cma_pernet *pernet = cma_pernet(net);

 WARN_ON(!xa_empty(&pernet->tcp_ps));
 WARN_ON(!xa_empty(&pernet->udp_ps));
 WARN_ON(!xa_empty(&pernet->ipoib_ps));
 WARN_ON(!xa_empty(&pernet->ib_ps));
}
