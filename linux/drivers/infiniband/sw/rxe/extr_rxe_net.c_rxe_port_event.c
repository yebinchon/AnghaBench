
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_dev {int ib_dev; } ;
struct TYPE_2__ {int port_num; } ;
struct ib_event {int event; TYPE_1__ element; int * device; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int ib_dispatch_event (struct ib_event*) ;

__attribute__((used)) static void rxe_port_event(struct rxe_dev *rxe,
      enum ib_event_type event)
{
 struct ib_event ev;

 ev.device = &rxe->ib_dev;
 ev.element.port_num = 1;
 ev.event = event;

 ib_dispatch_event(&ev);
}
