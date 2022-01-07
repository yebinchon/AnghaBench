
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es2_ap_dev {int dummy; } ;
struct arpc {int active; int list; } ;


 int list_del (int *) ;

__attribute__((used)) static void arpc_del(struct es2_ap_dev *es2, struct arpc *rpc)
{
 if (rpc->active) {
  rpc->active = 0;
  list_del(&rpc->list);
 }
}
