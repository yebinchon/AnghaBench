
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
typedef size_t u16 ;
struct creq_qp_event {int event; int cookie; } ;
struct creq_qp_error_notification {int res_err_state_reason; int req_err_state_reason; int xid; } ;
struct bnxt_qplib_hwq {int lock; int cons; } ;
struct bnxt_qplib_rcfw {size_t cmdq_depth; int waitq; TYPE_2__* pdev; int cmdq_bitmap; struct bnxt_qplib_crsq* crsqe_tbl; int (* aeq_handler ) (struct bnxt_qplib_rcfw*,struct creq_qp_event*,struct bnxt_qplib_qp*) ;TYPE_1__* qp_tbl; struct bnxt_qplib_hwq cmdq; } ;
struct bnxt_qplib_qp {int dummy; } ;
struct bnxt_qplib_crsq {int req_size; TYPE_3__* resp; } ;
typedef int __le16 ;
struct TYPE_6__ {int cookie; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct bnxt_qplib_qp* qp_handle; } ;



 size_t RCFW_CMD_IS_BLOCKING ;
 size_t RCFW_MAX_COOKIE_VALUE ;
 int SINGLE_DEPTH_NESTING ;
 int bnxt_qplib_mark_qp_error (struct bnxt_qplib_qp*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,char*,int ,int ) ;
 int dev_warn (int *,char*,size_t) ;
 size_t le16_to_cpu (int ) ;
 size_t le32_to_cpu (int ) ;
 int memcpy (TYPE_3__*,struct creq_qp_event*,int) ;
 int spin_lock_irqsave_nested (int *,unsigned long,int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct bnxt_qplib_rcfw*,struct creq_qp_event*,struct bnxt_qplib_qp*) ;
 int test_and_clear_bit (size_t,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int bnxt_qplib_process_qp_event(struct bnxt_qplib_rcfw *rcfw,
           struct creq_qp_event *qp_event)
{
 struct bnxt_qplib_hwq *cmdq = &rcfw->cmdq;
 struct creq_qp_error_notification *err_event;
 struct bnxt_qplib_crsq *crsqe;
 unsigned long flags;
 struct bnxt_qplib_qp *qp;
 u16 cbit, blocked = 0;
 u16 cookie;
 __le16 mcookie;
 u32 qp_id;

 switch (qp_event->event) {
 case 128:
  err_event = (struct creq_qp_error_notification *)qp_event;
  qp_id = le32_to_cpu(err_event->xid);
  qp = rcfw->qp_tbl[qp_id].qp_handle;
  dev_dbg(&rcfw->pdev->dev,
   "Received QP error notification\n");
  dev_dbg(&rcfw->pdev->dev,
   "qpid 0x%x, req_err=0x%x, resp_err=0x%x\n",
   qp_id, err_event->req_err_state_reason,
   err_event->res_err_state_reason);
  if (!qp)
   break;
  bnxt_qplib_mark_qp_error(qp);
  rcfw->aeq_handler(rcfw, qp_event, qp);
  break;
 default:
  spin_lock_irqsave_nested(&cmdq->lock, flags,
      SINGLE_DEPTH_NESTING);
  cookie = le16_to_cpu(qp_event->cookie);
  mcookie = qp_event->cookie;
  blocked = cookie & RCFW_CMD_IS_BLOCKING;
  cookie &= RCFW_MAX_COOKIE_VALUE;
  cbit = cookie % rcfw->cmdq_depth;
  crsqe = &rcfw->crsqe_tbl[cbit];
  if (crsqe->resp &&
      crsqe->resp->cookie == mcookie) {
   memcpy(crsqe->resp, qp_event, sizeof(*qp_event));
   crsqe->resp = ((void*)0);
  } else {
   if (crsqe->resp && crsqe->resp->cookie)
    dev_err(&rcfw->pdev->dev,
     "CMD %s cookie sent=%#x, recd=%#x\n",
     crsqe->resp ? "mismatch" : "collision",
     crsqe->resp ? crsqe->resp->cookie : 0,
     mcookie);
  }
  if (!test_and_clear_bit(cbit, rcfw->cmdq_bitmap))
   dev_warn(&rcfw->pdev->dev,
     "CMD bit %d was not requested\n", cbit);
  cmdq->cons += crsqe->req_size;
  crsqe->req_size = 0;

  if (!blocked)
   wake_up(&rcfw->waitq);
  spin_unlock_irqrestore(&cmdq->lock, flags);
 }
 return 0;
}
