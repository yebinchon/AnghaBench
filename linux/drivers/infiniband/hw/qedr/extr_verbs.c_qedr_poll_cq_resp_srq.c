
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cqe_responder {int dummy; } ;
struct qedr_qp {int dummy; } ;
struct qedr_dev {int dummy; } ;
struct qedr_cq {int dummy; } ;
struct ib_wc {int dummy; } ;


 int consume_cqe (struct qedr_cq*) ;
 int process_resp_one_srq (struct qedr_dev*,struct qedr_qp*,struct qedr_cq*,struct ib_wc*,struct rdma_cqe_responder*) ;

__attribute__((used)) static int qedr_poll_cq_resp_srq(struct qedr_dev *dev, struct qedr_qp *qp,
     struct qedr_cq *cq, int num_entries,
     struct ib_wc *wc,
     struct rdma_cqe_responder *resp)
{
 int cnt;

 cnt = process_resp_one_srq(dev, qp, cq, wc, resp);
 consume_cqe(cq);

 return cnt;
}
