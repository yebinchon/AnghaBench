
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct t4_cqe {int dummy; } ;
struct TYPE_5__ {int qid; } ;
struct TYPE_6__ {TYPE_2__ sq; } ;
struct TYPE_4__ {int rcq; int scq; } ;
struct c4iw_qp {int ibqp; TYPE_3__ wq; TYPE_1__ attr; } ;
struct c4iw_dev {int qps; } ;
struct c4iw_cq {int wait; int refcnt; } ;


 scalar_t__ CQE_OPCODE (struct t4_cqe*) ;
 int CQE_QPID (struct t4_cqe*) ;
 int CQE_STATUS (struct t4_cqe*) ;
 int CQE_TYPE (struct t4_cqe*) ;
 int CQE_WRID_HI (struct t4_cqe*) ;
 int CQE_WRID_LOW (struct t4_cqe*) ;
 scalar_t__ FW_RI_RDMA_WRITE ;
 int IB_EVENT_DEVICE_FATAL ;
 int IB_EVENT_QP_ACCESS_ERR ;
 int IB_EVENT_QP_FATAL ;
 int IB_EVENT_QP_REQ_ERR ;
 scalar_t__ RQ_TYPE (struct t4_cqe*) ;
 scalar_t__ SQ_TYPE (struct t4_cqe*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int c4iw_qp_add_ref (int *) ;
 int c4iw_qp_rem_ref (int *) ;
 struct c4iw_cq* get_chp (struct c4iw_dev*,int ) ;
 int post_qp_event (struct c4iw_dev*,struct c4iw_cq*,struct c4iw_qp*,struct t4_cqe*,int ) ;
 int pr_err (char*,...) ;
 int wake_up (int *) ;
 struct c4iw_qp* xa_load (int *,int ) ;
 int xa_lock_irq (int *) ;
 int xa_unlock_irq (int *) ;

void c4iw_ev_dispatch(struct c4iw_dev *dev, struct t4_cqe *err_cqe)
{
 struct c4iw_cq *chp;
 struct c4iw_qp *qhp;
 u32 cqid;

 xa_lock_irq(&dev->qps);
 qhp = xa_load(&dev->qps, CQE_QPID(err_cqe));
 if (!qhp) {
  pr_err("BAD AE qpid 0x%x opcode %d status 0x%x type %d wrid.hi 0x%x wrid.lo 0x%x\n",
         CQE_QPID(err_cqe),
         CQE_OPCODE(err_cqe), CQE_STATUS(err_cqe),
         CQE_TYPE(err_cqe), CQE_WRID_HI(err_cqe),
         CQE_WRID_LOW(err_cqe));
  xa_unlock_irq(&dev->qps);
  goto out;
 }

 if (SQ_TYPE(err_cqe))
  cqid = qhp->attr.scq;
 else
  cqid = qhp->attr.rcq;
 chp = get_chp(dev, cqid);
 if (!chp) {
  pr_err("BAD AE cqid 0x%x qpid 0x%x opcode %d status 0x%x type %d wrid.hi 0x%x wrid.lo 0x%x\n",
         cqid, CQE_QPID(err_cqe),
         CQE_OPCODE(err_cqe), CQE_STATUS(err_cqe),
         CQE_TYPE(err_cqe), CQE_WRID_HI(err_cqe),
         CQE_WRID_LOW(err_cqe));
  xa_unlock_irq(&dev->qps);
  goto out;
 }

 c4iw_qp_add_ref(&qhp->ibqp);
 atomic_inc(&chp->refcnt);
 xa_unlock_irq(&dev->qps);


 if (RQ_TYPE(err_cqe) &&
     (CQE_OPCODE(err_cqe) == FW_RI_RDMA_WRITE)) {
  post_qp_event(dev, chp, qhp, err_cqe, IB_EVENT_QP_REQ_ERR);
  goto done;
 }

 switch (CQE_STATUS(err_cqe)) {


 case 130:
  pr_err("AE with status 0!\n");
  break;

 case 131:
 case 136:
 case 134:
 case 155:
 case 128:
 case 154:
 case 146:
 case 147:
  post_qp_event(dev, chp, qhp, err_cqe, IB_EVENT_QP_ACCESS_ERR);
  break;


 case 150:
 case 149:
 case 148:
  post_qp_event(dev, chp, qhp, err_cqe, IB_EVENT_DEVICE_FATAL);
  break;


 case 138:
 case 137:
 case 153:
 case 144:
 case 135:
 case 151:
 case 133:
 case 139:
 case 152:
 case 142:
 case 129:
 case 143:
 case 141:
 case 140:
 case 132:
 case 145:
  post_qp_event(dev, chp, qhp, err_cqe, IB_EVENT_QP_FATAL);
  break;

 default:
  pr_err("Unknown T4 status 0x%x QPID 0x%x\n",
         CQE_STATUS(err_cqe), qhp->wq.sq.qid);
  post_qp_event(dev, chp, qhp, err_cqe, IB_EVENT_QP_FATAL);
  break;
 }
done:
 if (atomic_dec_and_test(&chp->refcnt))
  wake_up(&chp->wait);
 c4iw_qp_rem_ref(&qhp->ibqp);
out:
 return;
}
