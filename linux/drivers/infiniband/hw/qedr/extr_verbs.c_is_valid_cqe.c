
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cqe_requester {int flags; } ;
union rdma_cqe {struct rdma_cqe_requester req; } ;
struct qedr_cq {int pbl_toggle; } ;


 int RDMA_CQE_REQUESTER_TOGGLE_BIT_MASK ;

__attribute__((used)) static int is_valid_cqe(struct qedr_cq *cq, union rdma_cqe *cqe)
{
 struct rdma_cqe_requester *resp_cqe = &cqe->req;

 return (resp_cqe->flags & RDMA_CQE_REQUESTER_TOGGLE_BIT_MASK) ==
  cq->pbl_toggle;
}
