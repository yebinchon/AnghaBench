
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct cma_pernet {int dummy; } ;


 int cma_pernet_id ;
 struct cma_pernet* net_generic (struct net*,int ) ;

__attribute__((used)) static struct cma_pernet *cma_pernet(struct net *net)
{
 return net_generic(net, cma_pernet_id);
}
