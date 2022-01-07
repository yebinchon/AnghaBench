
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int port_num; } ;
struct ib_event {TYPE_3__ element; int * device; int event; } ;
struct TYPE_4__ {int ibdev; } ;
struct TYPE_5__ {TYPE_1__ rdi; } ;
struct hfi1_devdata {TYPE_2__ verbs_dev; } ;


 int IB_EVENT_PKEY_CHANGE ;
 int ib_dispatch_event (struct ib_event*) ;

void hfi1_event_pkey_change(struct hfi1_devdata *dd, u8 port)
{
 struct ib_event event;

 event.event = IB_EVENT_PKEY_CHANGE;
 event.device = &dd->verbs_dev.rdi.ibdev;
 event.element.port_num = port;
 ib_dispatch_event(&event);
}
