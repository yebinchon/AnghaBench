
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cqe_responder {scalar_t__ status; int rq_cons_or_srq_id; } ;
struct qedr_qp {int dummy; } ;
struct qedr_dev {int dummy; } ;
struct qedr_cq {int dummy; } ;
struct ib_wc {int dummy; } ;


 scalar_t__ RDMA_CQE_RESP_STS_WORK_REQUEST_FLUSHED_ERR ;
 int consume_cqe (struct qedr_cq*) ;
 int process_resp_flush (struct qedr_qp*,struct qedr_cq*,int,struct ib_wc*,int ) ;
 int process_resp_one (struct qedr_dev*,struct qedr_qp*,struct qedr_cq*,struct ib_wc*,struct rdma_cqe_responder*) ;
 int try_consume_resp_cqe (struct qedr_cq*,struct qedr_qp*,struct rdma_cqe_responder*,int*) ;

__attribute__((used)) static int qedr_poll_cq_resp(struct qedr_dev *dev, struct qedr_qp *qp,
        struct qedr_cq *cq, int num_entries,
        struct ib_wc *wc, struct rdma_cqe_responder *resp,
        int *update)
{
 int cnt;

 if (resp->status == RDMA_CQE_RESP_STS_WORK_REQUEST_FLUSHED_ERR) {
  cnt = process_resp_flush(qp, cq, num_entries, wc,
      resp->rq_cons_or_srq_id);
  try_consume_resp_cqe(cq, qp, resp, update);
 } else {
  cnt = process_resp_one(dev, qp, cq, wc, resp);
  consume_cqe(cq);
  *update |= 1;
 }

 return cnt;
}
