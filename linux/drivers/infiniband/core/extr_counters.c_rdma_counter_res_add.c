
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_counter {int res; } ;
struct TYPE_2__ {int task; int kern_name; } ;
struct ib_qp {TYPE_1__ res; } ;


 scalar_t__ rdma_is_kernel_res (TYPE_1__*) ;
 int rdma_restrack_attach_task (int *,int ) ;
 int rdma_restrack_kadd (int *) ;
 int rdma_restrack_set_task (int *,int ) ;
 int rdma_restrack_uadd (int *) ;

__attribute__((used)) static void rdma_counter_res_add(struct rdma_counter *counter,
     struct ib_qp *qp)
{
 if (rdma_is_kernel_res(&qp->res)) {
  rdma_restrack_set_task(&counter->res, qp->res.kern_name);
  rdma_restrack_kadd(&counter->res);
 } else {
  rdma_restrack_attach_task(&counter->res, qp->res.task);
  rdma_restrack_uadd(&counter->res);
 }
}
