
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iw_cm_event {int ord; int ird; int event; } ;
struct TYPE_3__ {int history; TYPE_2__* cm_id; } ;
struct c4iw_ep {TYPE_1__ com; int hwtid; int ird; int ord; } ;
typedef int event ;
struct TYPE_4__ {int (* event_handler ) (TYPE_2__*,struct iw_cm_event*) ;} ;


 int ESTAB_UPCALL ;
 int IW_CM_EVENT_ESTABLISHED ;
 int memset (struct iw_cm_event*,int ,int) ;
 int pr_debug (char*,struct c4iw_ep*,int ) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_2__*,struct iw_cm_event*) ;

__attribute__((used)) static void established_upcall(struct c4iw_ep *ep)
{
 struct iw_cm_event event;

 pr_debug("ep %p tid %u\n", ep, ep->hwtid);
 memset(&event, 0, sizeof(event));
 event.event = IW_CM_EVENT_ESTABLISHED;
 event.ird = ep->ord;
 event.ord = ep->ird;
 if (ep->com.cm_id) {
  pr_debug("ep %p tid %u\n", ep, ep->hwtid);
  ep->com.cm_id->event_handler(ep->com.cm_id, &event);
  set_bit(ESTAB_UPCALL, &ep->com.history);
 }
}
