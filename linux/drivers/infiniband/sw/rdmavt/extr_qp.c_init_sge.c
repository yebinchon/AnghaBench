
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wc ;
struct rvt_sge {int mr; } ;
struct rvt_sge_state {int num_sge; scalar_t__ total_len; struct rvt_sge sge; struct rvt_sge* sg_list; } ;
struct rvt_rwqe {int num_sge; int wr_id; TYPE_3__* sg_list; } ;
struct TYPE_5__ {int recv_cq; int pd; TYPE_1__* srq; int device; } ;
struct rvt_qp {scalar_t__ r_len; TYPE_2__ ibqp; struct rvt_sge* r_sg_list; struct rvt_sge_state r_sge; } ;
struct rvt_pd {int dummy; } ;
struct rvt_lkey_table {int dummy; } ;
struct rvt_dev_info {struct rvt_lkey_table lkey_table; } ;
struct ib_wc {TYPE_2__* qp; int opcode; int status; int wr_id; } ;
struct TYPE_6__ {scalar_t__ length; } ;
struct TYPE_4__ {int pd; } ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_WC_LOC_PROT_ERR ;
 int IB_WC_RECV ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 int ibcq_to_rvtcq (int ) ;
 struct rvt_pd* ibpd_to_rvtpd (int ) ;
 int memset (struct ib_wc*,int ,int) ;
 int rvt_cast_sge (TYPE_3__*) ;
 int rvt_cq_enter (int ,struct ib_wc*,int) ;
 int rvt_lkey_ok (struct rvt_lkey_table*,struct rvt_pd*,struct rvt_sge*,int *,int ,int ) ;
 int rvt_put_mr (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int init_sge(struct rvt_qp *qp, struct rvt_rwqe *wqe)
{
 int i, j, ret;
 struct ib_wc wc;
 struct rvt_lkey_table *rkt;
 struct rvt_pd *pd;
 struct rvt_sge_state *ss;
 struct rvt_dev_info *rdi = ib_to_rvt(qp->ibqp.device);

 rkt = &rdi->lkey_table;
 pd = ibpd_to_rvtpd(qp->ibqp.srq ? qp->ibqp.srq->pd : qp->ibqp.pd);
 ss = &qp->r_sge;
 ss->sg_list = qp->r_sg_list;
 qp->r_len = 0;
 for (i = j = 0; i < wqe->num_sge; i++) {
  if (wqe->sg_list[i].length == 0)
   continue;

  ret = rvt_lkey_ok(rkt, pd, j ? &ss->sg_list[j - 1] : &ss->sge,
      ((void*)0), rvt_cast_sge(&wqe->sg_list[i]),
      IB_ACCESS_LOCAL_WRITE);
  if (unlikely(ret <= 0))
   goto bad_lkey;
  qp->r_len += wqe->sg_list[i].length;
  j++;
 }
 ss->num_sge = j;
 ss->total_len = qp->r_len;
 return 1;

bad_lkey:
 while (j) {
  struct rvt_sge *sge = --j ? &ss->sg_list[j - 1] : &ss->sge;

  rvt_put_mr(sge->mr);
 }
 ss->num_sge = 0;
 memset(&wc, 0, sizeof(wc));
 wc.wr_id = wqe->wr_id;
 wc.status = IB_WC_LOC_PROT_ERR;
 wc.opcode = IB_WC_RECV;
 wc.qp = &qp->ibqp;

 rvt_cq_enter(ibcq_to_rvtcq(qp->ibqp.recv_cq), &wc, 1);
 return 0;
}
