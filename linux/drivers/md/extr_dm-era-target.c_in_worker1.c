
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc {int (* fn1 ) (struct era_metadata*,void*) ;void* arg; int * fn0; } ;
struct era {int dummy; } ;


 int perform_rpc (struct era*,struct rpc*) ;

__attribute__((used)) static int in_worker1(struct era *era,
        int (*fn)(struct era_metadata *, void *), void *arg)
{
 struct rpc rpc;
 rpc.fn0 = ((void*)0);
 rpc.fn1 = fn;
 rpc.arg = arg;

 return perform_rpc(era, &rpc);
}
