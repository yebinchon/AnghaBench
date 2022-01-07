
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocrdma_dev {int ibdev; } ;
struct TYPE_2__ {int port_num; } ;
struct ib_event {int * device; TYPE_1__ element; int event; } ;


 int IB_EVENT_PORT_ERR ;
 int ib_dispatch_event (struct ib_event*) ;

__attribute__((used)) static int ocrdma_dispatch_port_error(struct ocrdma_dev *dev)
{
 struct ib_event err_event;

 err_event.event = IB_EVENT_PORT_ERR;
 err_event.element.port_num = 1;
 err_event.device = &dev->ibdev;
 ib_dispatch_event(&err_event);
 return 0;
}
