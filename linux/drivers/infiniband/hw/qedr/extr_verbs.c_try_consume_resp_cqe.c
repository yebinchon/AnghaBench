
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cqe_responder {int rq_cons_or_srq_id; } ;
struct TYPE_2__ {scalar_t__ wqe_cons; } ;
struct qedr_qp {TYPE_1__ rq; } ;
struct qedr_cq {int dummy; } ;


 int consume_cqe (struct qedr_cq*) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static void try_consume_resp_cqe(struct qedr_cq *cq, struct qedr_qp *qp,
     struct rdma_cqe_responder *resp, int *update)
{
 if (le16_to_cpu(resp->rq_cons_or_srq_id) == qp->rq.wqe_cons) {
  consume_cqe(cq);
  *update |= 1;
 }
}
