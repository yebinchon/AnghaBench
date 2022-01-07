
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_cq {scalar_t__ latest_cqe; scalar_t__ toggle_cqe; int pbl; int pbl_toggle; } ;


 int RDMA_CQE_REQUESTER_TOGGLE_BIT_MASK ;
 scalar_t__ qed_chain_consume (int *) ;

__attribute__((used)) static void consume_cqe(struct qedr_cq *cq)
{
 if (cq->latest_cqe == cq->toggle_cqe)
  cq->pbl_toggle ^= RDMA_CQE_REQUESTER_TOGGLE_BIT_MASK;

 cq->latest_cqe = qed_chain_consume(&cq->pbl);
}
