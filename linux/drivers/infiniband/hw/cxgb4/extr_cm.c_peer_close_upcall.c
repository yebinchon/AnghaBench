
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iw_cm_event {int event; } ;
struct TYPE_4__ {int history; TYPE_2__* cm_id; } ;
struct c4iw_ep {TYPE_1__ com; int hwtid; } ;
typedef int event ;
struct TYPE_5__ {int (* event_handler ) (TYPE_2__*,struct iw_cm_event*) ;} ;


 int DISCONN_UPCALL ;
 int IW_CM_EVENT_DISCONNECT ;
 int memset (struct iw_cm_event*,int ,int) ;
 int pr_debug (char*,struct c4iw_ep*,TYPE_2__*,...) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_2__*,struct iw_cm_event*) ;

__attribute__((used)) static void peer_close_upcall(struct c4iw_ep *ep)
{
 struct iw_cm_event event;

 pr_debug("ep %p tid %u\n", ep, ep->hwtid);
 memset(&event, 0, sizeof(event));
 event.event = IW_CM_EVENT_DISCONNECT;
 if (ep->com.cm_id) {
  pr_debug("peer close delivered ep %p cm_id %p tid %u\n",
    ep, ep->com.cm_id, ep->hwtid);
  ep->com.cm_id->event_handler(ep->com.cm_id, &event);
  set_bit(DISCONN_UPCALL, &ep->com.history);
 }
}
