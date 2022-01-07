
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc {int (* fn0 ) (struct era_metadata*) ;int * fn1; } ;
struct era {int dummy; } ;


 int perform_rpc (struct era*,struct rpc*) ;

__attribute__((used)) static int in_worker0(struct era *era, int (*fn)(struct era_metadata *))
{
 struct rpc rpc;
 rpc.fn0 = fn;
 rpc.fn1 = ((void*)0);

 return perform_rpc(era, &rpc);
}
