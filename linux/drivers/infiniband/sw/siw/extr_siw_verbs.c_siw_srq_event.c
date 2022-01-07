
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_srq {int srq_context; int (* event_handler ) (struct ib_event*,int ) ;int pd; int device; } ;
struct siw_srq {struct ib_srq base_srq; } ;
struct TYPE_2__ {struct ib_srq* srq; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int siw_dbg_pd (int ,char*,int) ;
 int stub1 (struct ib_event*,int ) ;

void siw_srq_event(struct siw_srq *srq, enum ib_event_type etype)
{
 struct ib_event event;
 struct ib_srq *base_srq = &srq->base_srq;

 event.event = etype;
 event.device = base_srq->device;
 event.element.srq = base_srq;

 if (base_srq->event_handler) {
  siw_dbg_pd(srq->base_srq.pd,
      "reporting SRQ event %d\n", etype);
  base_srq->event_handler(&event, base_srq->srq_context);
 }
}
