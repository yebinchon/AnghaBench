
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct es2_ap_dev {int arpcs; int arpc_id_cycle; } ;
struct arpc {int active; int list; TYPE_1__* req; } ;
struct TYPE_2__ {int id; } ;


 int cpu_to_le16 (int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void arpc_add(struct es2_ap_dev *es2, struct arpc *rpc)
{
 rpc->active = 1;
 rpc->req->id = cpu_to_le16(es2->arpc_id_cycle++);
 list_add_tail(&rpc->list, &es2->arpcs);
}
