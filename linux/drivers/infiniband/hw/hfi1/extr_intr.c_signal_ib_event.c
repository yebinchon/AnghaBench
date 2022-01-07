
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int port_num; } ;
struct ib_event {int event; TYPE_3__ element; int * device; } ;
struct hfi1_pportdata {int port; struct hfi1_devdata* dd; } ;
struct TYPE_4__ {int ibdev; } ;
struct TYPE_5__ {TYPE_1__ rdi; } ;
struct hfi1_devdata {int flags; TYPE_2__ verbs_dev; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int HFI1_INITTED ;
 int ib_dispatch_event (struct ib_event*) ;

__attribute__((used)) static void signal_ib_event(struct hfi1_pportdata *ppd, enum ib_event_type ev)
{
 struct ib_event event;
 struct hfi1_devdata *dd = ppd->dd;






 if (!(dd->flags & HFI1_INITTED))
  return;
 event.device = &dd->verbs_dev.rdi.ibdev;
 event.element.port_num = ppd->port;
 event.event = ev;
 ib_dispatch_event(&event);
}
