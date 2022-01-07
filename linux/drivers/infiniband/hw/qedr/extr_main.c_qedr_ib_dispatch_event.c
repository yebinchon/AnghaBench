
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qedr_dev {int ibdev; } ;
struct TYPE_2__ {int port_num; } ;
struct ib_event {int event; TYPE_1__ element; int * device; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int ib_dispatch_event (struct ib_event*) ;

__attribute__((used)) static void qedr_ib_dispatch_event(struct qedr_dev *dev, u8 port_num,
       enum ib_event_type type)
{
 struct ib_event ibev;

 ibev.device = &dev->ibdev;
 ibev.element.port_num = port_num;
 ibev.event = type;

 ib_dispatch_event(&ibev);
}
