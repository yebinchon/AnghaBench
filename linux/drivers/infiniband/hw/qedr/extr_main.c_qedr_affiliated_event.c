
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct regpair {int lo; scalar_t__ hi; } ;
struct ib_srq {int srq_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct qedr_srq {struct ib_srq ibsrq; } ;
struct ib_qp {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct ib_cq {int cq_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct qedr_qp {struct ib_qp ibqp; struct ib_cq ibcq; } ;
struct qedr_dev {int srqs; } ;
struct qedr_cq {struct ib_qp ibqp; struct ib_cq ibcq; } ;
struct TYPE_2__ {struct ib_srq* srq; struct ib_qp* qp; struct ib_cq* cq; } ;
struct ib_event {TYPE_1__ element; int device; void* event; } ;


 int DP_ERR (struct qedr_dev*,char*,int,...) ;
 int DP_NOTICE (struct qedr_dev*,char*,int,...) ;

 int EVENT_TYPE_NOT_DEFINED ;


 void* IB_EVENT_CQ_ERR ;
 void* IB_EVENT_QP_ACCESS_ERR ;
 void* IB_EVENT_QP_FATAL ;
 void* IB_EVENT_QP_REQ_ERR ;
 void* IB_EVENT_SQ_DRAINED ;
 void* IB_EVENT_SRQ_ERR ;
 void* IB_EVENT_SRQ_LIMIT_REACHED ;
 scalar_t__ IS_ROCE (struct qedr_dev*) ;
 int WARN (int,char*,int) ;
 int stub1 (struct ib_event*,int ) ;
 int stub2 (struct ib_event*,int ) ;
 int stub3 (struct ib_event*,int ) ;
 struct qedr_srq* xa_load (int *,int ) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qedr_affiliated_event(void *context, u8 e_code, void *fw_handle)
{




 struct qedr_dev *dev = (struct qedr_dev *)context;
 struct regpair *async_handle = (struct regpair *)fw_handle;
 u64 roce_handle64 = ((u64) async_handle->hi << 32) + async_handle->lo;
 u8 event_type = 0;
 struct ib_event event;
 struct ib_srq *ibsrq;
 struct qedr_srq *srq;
 unsigned long flags;
 struct ib_cq *ibcq;
 struct ib_qp *ibqp;
 struct qedr_cq *cq;
 struct qedr_qp *qp;
 u16 srq_id;

 if (IS_ROCE(dev)) {
  switch (e_code) {
  case 134:
   event.event = IB_EVENT_CQ_ERR;
   event_type = 1;
   break;
  case 130:
   event.event = IB_EVENT_SQ_DRAINED;
   event_type = 2;
   break;
  case 131:
   event.event = IB_EVENT_QP_FATAL;
   event_type = 2;
   break;
  case 132:
   event.event = IB_EVENT_QP_REQ_ERR;
   event_type = 2;
   break;
  case 133:
   event.event = IB_EVENT_QP_ACCESS_ERR;
   event_type = 2;
   break;
  case 128:
   event.event = IB_EVENT_SRQ_LIMIT_REACHED;
   event_type = 3;
   break;
  case 129:
   event.event = IB_EVENT_SRQ_ERR;
   event_type = 3;
   break;
  default:
   DP_ERR(dev, "unsupported event %d on handle=%llx\n",
          e_code, roce_handle64);
  }
 } else {
  switch (e_code) {
  case 135:
   event.event = IB_EVENT_SRQ_LIMIT_REACHED;
   event_type = 3;
   break;
  case 136:
   event.event = IB_EVENT_SRQ_ERR;
   event_type = 3;
   break;
  default:
  DP_ERR(dev, "unsupported event %d on handle=%llx\n", e_code,
         roce_handle64);
  }
 }
 switch (event_type) {
 case 1:
  cq = (struct qedr_cq *)(uintptr_t)roce_handle64;
  if (cq) {
   ibcq = &cq->ibcq;
   if (ibcq->event_handler) {
    event.device = ibcq->device;
    event.element.cq = ibcq;
    ibcq->event_handler(&event, ibcq->cq_context);
   }
  } else {
   WARN(1,
        "Error: CQ event with NULL pointer ibcq. Handle=%llx\n",
        roce_handle64);
  }
  DP_ERR(dev, "CQ event %d on handle %p\n", e_code, cq);
  break;
 case 2:
  qp = (struct qedr_qp *)(uintptr_t)roce_handle64;
  if (qp) {
   ibqp = &qp->ibqp;
   if (ibqp->event_handler) {
    event.device = ibqp->device;
    event.element.qp = ibqp;
    ibqp->event_handler(&event, ibqp->qp_context);
   }
  } else {
   WARN(1,
        "Error: QP event with NULL pointer ibqp. Handle=%llx\n",
        roce_handle64);
  }
  DP_ERR(dev, "QP event %d on handle %p\n", e_code, qp);
  break;
 case 3:
  srq_id = (u16)roce_handle64;
  xa_lock_irqsave(&dev->srqs, flags);
  srq = xa_load(&dev->srqs, srq_id);
  if (srq) {
   ibsrq = &srq->ibsrq;
   if (ibsrq->event_handler) {
    event.device = ibsrq->device;
    event.element.srq = ibsrq;
    ibsrq->event_handler(&event,
           ibsrq->srq_context);
   }
  } else {
   DP_NOTICE(dev,
      "SRQ event with NULL pointer ibsrq. Handle=%llx\n",
      roce_handle64);
  }
  xa_unlock_irqrestore(&dev->srqs, flags);
  DP_NOTICE(dev, "SRQ event %d on handle %p\n", e_code, srq);
 default:
  break;
 }
}
