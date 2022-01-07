
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port_num; } ;
struct ib_event {int event; TYPE_1__ element; int * device; } ;
struct i40iw_ib_device {int ibdev; } ;
struct i40iw_device {scalar_t__ iw_status; struct i40iw_ib_device* iwibdev; } ;


 int IB_EVENT_PORT_ACTIVE ;
 int IB_EVENT_PORT_ERR ;
 int ib_dispatch_event (struct ib_event*) ;

void i40iw_port_ibevent(struct i40iw_device *iwdev)
{
 struct i40iw_ib_device *iwibdev = iwdev->iwibdev;
 struct ib_event event;

 event.device = &iwibdev->ibdev;
 event.element.port_num = 1;
 event.event = iwdev->iw_status ? IB_EVENT_PORT_ACTIVE : IB_EVENT_PORT_ERR;
 ib_dispatch_event(&event);
}
