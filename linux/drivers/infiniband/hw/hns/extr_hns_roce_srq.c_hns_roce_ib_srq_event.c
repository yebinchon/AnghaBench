
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_srq {int srq_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct TYPE_2__ {struct ib_srq* srq; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;
struct hns_roce_srq {int srqn; struct ib_srq ibsrq; } ;
struct hns_roce_dev {int dev; } ;
typedef enum hns_roce_event { ____Placeholder_hns_roce_event } hns_roce_event ;




 int IB_EVENT_SRQ_ERR ;
 int IB_EVENT_SRQ_LIMIT_REACHED ;
 int dev_err (int ,char*,int,int ) ;
 int stub1 (struct ib_event*,int ) ;
 struct hns_roce_dev* to_hr_dev (int ) ;

__attribute__((used)) static void hns_roce_ib_srq_event(struct hns_roce_srq *srq,
      enum hns_roce_event event_type)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(srq->ibsrq.device);
 struct ib_srq *ibsrq = &srq->ibsrq;
 struct ib_event event;

 if (ibsrq->event_handler) {
  event.device = ibsrq->device;
  event.element.srq = ibsrq;
  switch (event_type) {
  case 128:
   event.event = IB_EVENT_SRQ_LIMIT_REACHED;
   break;
  case 129:
   event.event = IB_EVENT_SRQ_ERR;
   break;
  default:
   dev_err(hr_dev->dev,
      "hns_roce:Unexpected event type 0x%x on SRQ %06lx\n",
      event_type, srq->srqn);
   return;
  }

  ibsrq->event_handler(&event, ibsrq->srq_context);
 }
}
