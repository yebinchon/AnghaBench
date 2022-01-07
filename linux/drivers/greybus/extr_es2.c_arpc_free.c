
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arpc {struct arpc* resp; struct arpc* req; } ;


 int kfree (struct arpc*) ;

__attribute__((used)) static void arpc_free(struct arpc *rpc)
{
 kfree(rpc->req);
 kfree(rpc->resp);
 kfree(rpc);
}
