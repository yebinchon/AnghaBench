
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_qp {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;} ;
struct TYPE_2__ {int port_num; struct ib_qp* qp; } ;
struct ib_event {int event; TYPE_1__ element; struct ib_device* device; } ;
struct ib_device {int dummy; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int ib_dispatch_event (struct ib_event*) ;
 int stub1 (struct ib_event*,int ) ;

__attribute__((used)) static void bnxt_re_dispatch_event(struct ib_device *ibdev, struct ib_qp *qp,
       u8 port_num, enum ib_event_type event)
{
 struct ib_event ib_event;

 ib_event.device = ibdev;
 if (qp) {
  ib_event.element.qp = qp;
  ib_event.event = event;
  if (qp->event_handler)
   qp->event_handler(&ib_event, qp->qp_context);

 } else {
  ib_event.element.port_num = port_num;
  ib_event.event = event;
  ib_dispatch_event(&ib_event);
 }
}
