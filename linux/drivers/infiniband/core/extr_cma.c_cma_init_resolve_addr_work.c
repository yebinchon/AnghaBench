
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_id_private {int dummy; } ;
struct TYPE_2__ {int event; } ;
struct cma_work {TYPE_1__ event; int new_state; int old_state; int work; struct rdma_id_private* id; } ;


 int INIT_WORK (int *,int ) ;
 int RDMA_CM_ADDR_QUERY ;
 int RDMA_CM_ADDR_RESOLVED ;
 int RDMA_CM_EVENT_ADDR_RESOLVED ;
 int cma_work_handler ;

__attribute__((used)) static void cma_init_resolve_addr_work(struct cma_work *work,
           struct rdma_id_private *id_priv)
{
 work->id = id_priv;
 INIT_WORK(&work->work, cma_work_handler);
 work->old_state = RDMA_CM_ADDR_QUERY;
 work->new_state = RDMA_CM_ADDR_RESOLVED;
 work->event.event = RDMA_CM_EVENT_ADDR_RESOLVED;
}
