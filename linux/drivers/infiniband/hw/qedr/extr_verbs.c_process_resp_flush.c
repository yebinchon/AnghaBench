
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ wqe_cons; size_t cons; int pbl; } ;
struct qedr_qp {TYPE_2__ rq; TYPE_1__* rqe_wr_id; int ibqp; int id; } ;
struct qedr_cq {int dummy; } ;
struct ib_wc {int * qp; int wr_id; scalar_t__ byte_len; int src_qp; scalar_t__ wc_flags; scalar_t__ vendor_err; int status; } ;
struct TYPE_3__ {int wqe_size; int wr_id; } ;


 int IB_WC_WR_FLUSH_ERR ;
 int qed_chain_consume (int *) ;
 int qedr_inc_sw_cons (TYPE_2__*) ;

__attribute__((used)) static int process_resp_flush(struct qedr_qp *qp, struct qedr_cq *cq,
         int num_entries, struct ib_wc *wc, u16 hw_cons)
{
 u16 cnt = 0;

 while (num_entries && qp->rq.wqe_cons != hw_cons) {

  wc->status = IB_WC_WR_FLUSH_ERR;
  wc->vendor_err = 0;
  wc->wc_flags = 0;
  wc->src_qp = qp->id;
  wc->byte_len = 0;
  wc->wr_id = qp->rqe_wr_id[qp->rq.cons].wr_id;
  wc->qp = &qp->ibqp;
  num_entries--;
  wc++;
  cnt++;
  while (qp->rqe_wr_id[qp->rq.cons].wqe_size--)
   qed_chain_consume(&qp->rq.pbl);
  qedr_inc_sw_cons(&qp->rq);
 }

 return cnt;
}
