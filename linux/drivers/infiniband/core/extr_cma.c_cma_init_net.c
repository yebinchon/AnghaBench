
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct cma_pernet {int ib_ps; int ipoib_ps; int udp_ps; int tcp_ps; } ;


 struct cma_pernet* cma_pernet (struct net*) ;
 int xa_init (int *) ;

__attribute__((used)) static int cma_init_net(struct net *net)
{
 struct cma_pernet *pernet = cma_pernet(net);

 xa_init(&pernet->tcp_ps);
 xa_init(&pernet->udp_ps);
 xa_init(&pernet->ipoib_ps);
 xa_init(&pernet->ib_ps);

 return 0;
}
