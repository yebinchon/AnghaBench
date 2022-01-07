
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_event_handler {int dummy; } ;
struct TYPE_4__ {int port_num; } ;
struct ib_event {TYPE_2__ element; TYPE_1__* device; int event; } ;
struct TYPE_3__ {int dev; } ;


 int dev_name (int *) ;
 int ib_event_msg (int ) ;
 int iser_err (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void iser_event_handler(struct ib_event_handler *handler,
    struct ib_event *event)
{
 iser_err("async event %s (%d) on device %s port %d\n",
   ib_event_msg(event->event), event->event,
  dev_name(&event->device->dev), event->element.port_num);
}
