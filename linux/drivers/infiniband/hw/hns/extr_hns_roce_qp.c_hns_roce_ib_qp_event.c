
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_qp {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;TYPE_3__* device; } ;
struct TYPE_4__ {struct ib_qp* qp; } ;
struct ib_event {int event; TYPE_1__ element; TYPE_3__* device; } ;
struct hns_roce_qp {int qpn; struct ib_qp ibqp; } ;
typedef enum hns_roce_event { ____Placeholder_hns_roce_event } hns_roce_event ;
struct TYPE_5__ {int parent; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
 int IB_EVENT_COMM_EST ;
 int IB_EVENT_PATH_MIG ;
 int IB_EVENT_PATH_MIG_ERR ;
 int IB_EVENT_QP_ACCESS_ERR ;
 int IB_EVENT_QP_FATAL ;
 int IB_EVENT_QP_LAST_WQE_REACHED ;
 int IB_EVENT_QP_REQ_ERR ;
 int IB_EVENT_SQ_DRAINED ;
 int dev_dbg (int ,char*,int,int ) ;
 int stub1 (struct ib_event*,int ) ;

__attribute__((used)) static void hns_roce_ib_qp_event(struct hns_roce_qp *hr_qp,
     enum hns_roce_event type)
{
 struct ib_event event;
 struct ib_qp *ibqp = &hr_qp->ibqp;

 if (ibqp->event_handler) {
  event.device = ibqp->device;
  event.element.qp = ibqp;
  switch (type) {
  case 132:
   event.event = IB_EVENT_PATH_MIG;
   break;
  case 135:
   event.event = IB_EVENT_COMM_EST;
   break;
  case 130:
   event.event = IB_EVENT_SQ_DRAINED;
   break;
  case 129:
   event.event = IB_EVENT_QP_LAST_WQE_REACHED;
   break;
  case 128:
   event.event = IB_EVENT_QP_FATAL;
   break;
  case 131:
   event.event = IB_EVENT_PATH_MIG_ERR;
   break;
  case 134:
   event.event = IB_EVENT_QP_REQ_ERR;
   break;
  case 133:
   event.event = IB_EVENT_QP_ACCESS_ERR;
   break;
  default:
   dev_dbg(ibqp->device->dev.parent, "roce_ib: Unexpected event type %d on QP %06lx\n",
    type, hr_qp->qpn);
   return;
  }
  ibqp->event_handler(&event, ibqp->qp_context);
 }
}
