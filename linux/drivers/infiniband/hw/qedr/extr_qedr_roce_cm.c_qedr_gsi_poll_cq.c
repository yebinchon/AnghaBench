
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_9__ {int qp_num; } ;
struct TYPE_10__ {size_t cons; size_t gsi_cons; } ;
struct qedr_qp {TYPE_4__ ibqp; TYPE_5__ sq; TYPE_5__ rq; TYPE_3__* wqe_wr_id; TYPE_2__* rqe_wr_id; } ;
struct qedr_dev {struct qedr_qp* gsi_qp; } ;
struct qedr_cq {int cq_lock; } ;
struct ib_wc {int wc_flags; int vlan_id; int sl; void* status; int opcode; int wr_id; TYPE_4__* qp; int smac; int byte_len; scalar_t__ pkey_index; } ;
struct ib_cq {int device; } ;
struct TYPE_8__ {int wr_id; } ;
struct TYPE_7__ {int vlan; int smac; TYPE_1__* sg_list; scalar_t__ rc; int wr_id; } ;
struct TYPE_6__ {int length; } ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,int,int,size_t,size_t,size_t,size_t,int ) ;
 void* IB_WC_GENERAL_ERR ;
 int IB_WC_GRH ;
 int IB_WC_IP_CSUM_OK ;
 int IB_WC_RECV ;
 int IB_WC_SEND ;
 void* IB_WC_SUCCESS ;
 int IB_WC_WITH_SMAC ;
 int IB_WC_WITH_VLAN ;
 int QEDR_MSG_GSI ;
 int VLAN_PRIO_MASK ;
 int VLAN_PRIO_SHIFT ;
 int VLAN_VID_MASK ;
 int ether_addr_copy (int ,int ) ;
 struct qedr_cq* get_qedr_cq (struct ib_cq*) ;
 struct qedr_dev* get_qedr_dev (int ) ;
 int memset (struct ib_wc*,int ,int) ;
 int qedr_inc_sw_cons (TYPE_5__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int qedr_gsi_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
 struct qedr_dev *dev = get_qedr_dev(ibcq->device);
 struct qedr_cq *cq = get_qedr_cq(ibcq);
 struct qedr_qp *qp = dev->gsi_qp;
 unsigned long flags;
 u16 vlan_id;
 int i = 0;

 spin_lock_irqsave(&cq->cq_lock, flags);

 while (i < num_entries && qp->rq.cons != qp->rq.gsi_cons) {
  memset(&wc[i], 0, sizeof(*wc));

  wc[i].qp = &qp->ibqp;
  wc[i].wr_id = qp->rqe_wr_id[qp->rq.cons].wr_id;
  wc[i].opcode = IB_WC_RECV;
  wc[i].pkey_index = 0;
  wc[i].status = (qp->rqe_wr_id[qp->rq.cons].rc) ?
      IB_WC_GENERAL_ERR : IB_WC_SUCCESS;

  wc[i].byte_len = qp->rqe_wr_id[qp->rq.cons].sg_list[0].length;
  wc[i].wc_flags |= IB_WC_GRH | IB_WC_IP_CSUM_OK;
  ether_addr_copy(wc[i].smac, qp->rqe_wr_id[qp->rq.cons].smac);
  wc[i].wc_flags |= IB_WC_WITH_SMAC;

  vlan_id = qp->rqe_wr_id[qp->rq.cons].vlan &
     VLAN_VID_MASK;
  if (vlan_id) {
   wc[i].wc_flags |= IB_WC_WITH_VLAN;
   wc[i].vlan_id = vlan_id;
   wc[i].sl = (qp->rqe_wr_id[qp->rq.cons].vlan &
        VLAN_PRIO_MASK) >> VLAN_PRIO_SHIFT;
  }

  qedr_inc_sw_cons(&qp->rq);
  i++;
 }

 while (i < num_entries && qp->sq.cons != qp->sq.gsi_cons) {
  memset(&wc[i], 0, sizeof(*wc));

  wc[i].qp = &qp->ibqp;
  wc[i].wr_id = qp->wqe_wr_id[qp->sq.cons].wr_id;
  wc[i].opcode = IB_WC_SEND;
  wc[i].status = IB_WC_SUCCESS;

  qedr_inc_sw_cons(&qp->sq);
  i++;
 }

 spin_unlock_irqrestore(&cq->cq_lock, flags);

 DP_DEBUG(dev, QEDR_MSG_GSI,
   "gsi poll_cq: requested entries=%d, actual=%d, qp->rq.cons=%d, qp->rq.gsi_cons=%x, qp->sq.cons=%d, qp->sq.gsi_cons=%d, qp_num=%d\n",
   num_entries, i, qp->rq.cons, qp->rq.gsi_cons, qp->sq.cons,
   qp->sq.gsi_cons, qp->ibqp.qp_num);

 return i;
}
