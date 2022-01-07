
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct siw_qp {TYPE_1__ attrs; struct ib_qp* ib_qp; } ;
struct ib_qp {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct TYPE_4__ {struct ib_qp* qp; } ;
struct ib_event {int event; TYPE_2__ element; int device; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int SIW_QP_IN_DESTROY ;
 int siw_dbg_qp (struct siw_qp*,char*,int) ;
 int stub1 (struct ib_event*,int ) ;

void siw_qp_event(struct siw_qp *qp, enum ib_event_type etype)
{
 struct ib_event event;
 struct ib_qp *base_qp = qp->ib_qp;





 if (qp->attrs.flags & SIW_QP_IN_DESTROY)
  return;

 event.event = etype;
 event.device = base_qp->device;
 event.element.qp = base_qp;

 if (base_qp->event_handler) {
  siw_dbg_qp(qp, "reporting event %d\n", etype);
  base_qp->event_handler(&event, base_qp->qp_context);
 }
}
