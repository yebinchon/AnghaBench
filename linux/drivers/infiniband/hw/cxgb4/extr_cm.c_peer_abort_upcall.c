
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iw_cm_event {int status; int event; } ;
struct TYPE_5__ {int history; TYPE_1__* cm_id; } ;
struct c4iw_ep {TYPE_3__ com; int hwtid; } ;
typedef int event ;
struct TYPE_4__ {int (* event_handler ) (TYPE_1__*,struct iw_cm_event*) ;} ;


 int ABORT_UPCALL ;
 int ECONNRESET ;
 int IW_CM_EVENT_CLOSE ;
 int deref_cm_id (TYPE_3__*) ;
 int memset (struct iw_cm_event*,int ,int) ;
 int pr_debug (char*,struct c4iw_ep*,TYPE_1__*,...) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_1__*,struct iw_cm_event*) ;

__attribute__((used)) static void peer_abort_upcall(struct c4iw_ep *ep)
{
 struct iw_cm_event event;

 pr_debug("ep %p tid %u\n", ep, ep->hwtid);
 memset(&event, 0, sizeof(event));
 event.event = IW_CM_EVENT_CLOSE;
 event.status = -ECONNRESET;
 if (ep->com.cm_id) {
  pr_debug("abort delivered ep %p cm_id %p tid %u\n", ep,
    ep->com.cm_id, ep->hwtid);
  ep->com.cm_id->event_handler(ep->com.cm_id, &event);
  deref_cm_id(&ep->com);
  set_bit(ABORT_UPCALL, &ep->com.history);
 }
}
