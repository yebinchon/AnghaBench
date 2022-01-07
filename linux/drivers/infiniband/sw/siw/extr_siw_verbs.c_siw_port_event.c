
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct siw_device {int base_dev; } ;
struct TYPE_2__ {int port_num; } ;
struct ib_event {int event; TYPE_1__ element; int * device; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int ib_dispatch_event (struct ib_event*) ;
 int siw_dbg (int *,char*,int) ;

void siw_port_event(struct siw_device *sdev, u8 port, enum ib_event_type etype)
{
 struct ib_event event;

 event.event = etype;
 event.device = &sdev->base_dev;
 event.element.port_num = port;

 siw_dbg(&sdev->base_dev, "reporting port event %d\n", etype);

 ib_dispatch_event(&event);
}
