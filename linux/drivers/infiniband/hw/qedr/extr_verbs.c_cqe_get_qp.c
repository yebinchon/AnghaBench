
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lo; int hi; } ;
struct rdma_cqe_requester {TYPE_1__ qp_handle; } ;
union rdma_cqe {struct rdma_cqe_requester req; } ;
struct qedr_qp {int dummy; } ;


 scalar_t__ HILO_GEN (int ,int ,int ) ;
 int u64 ;

__attribute__((used)) static struct qedr_qp *cqe_get_qp(union rdma_cqe *cqe)
{
 struct rdma_cqe_requester *resp_cqe = &cqe->req;
 struct qedr_qp *qp;

 qp = (struct qedr_qp *)(uintptr_t)HILO_GEN(resp_cqe->qp_handle.hi,
         resp_cqe->qp_handle.lo,
         u64);
 return qp;
}
