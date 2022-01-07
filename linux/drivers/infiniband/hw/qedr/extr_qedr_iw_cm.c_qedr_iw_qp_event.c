
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qedr_iw_ep {TYPE_2__* qp; struct qedr_dev* dev; } ;
struct qedr_dev {int dummy; } ;
struct qed_iwarp_cm_event_params {int dummy; } ;
struct ib_qp {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct TYPE_3__ {struct ib_qp* qp; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;
struct TYPE_4__ {struct ib_qp ibqp; } ;


 int DP_NOTICE (struct qedr_dev*,char*,char*) ;
 int stub1 (struct ib_event*,int ) ;

__attribute__((used)) static void
qedr_iw_qp_event(void *context,
   struct qed_iwarp_cm_event_params *params,
   enum ib_event_type ib_event, char *str)
{
 struct qedr_iw_ep *ep = (struct qedr_iw_ep *)context;
 struct qedr_dev *dev = ep->dev;
 struct ib_qp *ibqp = &ep->qp->ibqp;
 struct ib_event event;

 DP_NOTICE(dev, "QP error received: %s\n", str);

 if (ibqp->event_handler) {
  event.event = ib_event;
  event.device = ibqp->device;
  event.element.qp = ibqp;
  ibqp->event_handler(&event, ibqp->qp_context);
 }
}
