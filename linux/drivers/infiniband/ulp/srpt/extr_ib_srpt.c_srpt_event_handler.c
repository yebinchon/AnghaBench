
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct srpt_port {int work; int sm_lid; int lid; } ;
struct srpt_device {TYPE_2__* device; struct srpt_port* port; } ;
struct ib_event_handler {int dummy; } ;
struct TYPE_3__ {int port_num; } ;
struct ib_event {int event; TYPE_1__ element; TYPE_2__* device; } ;
struct TYPE_4__ {size_t phys_port_cnt; int dev; } ;
 int WARN (int,char*,int,int ,size_t) ;
 int dev_name (int *) ;
 struct srpt_device* ib_get_client_data (TYPE_2__*,int *) ;
 int pr_debug (char*,int,int ) ;
 int pr_err (char*,int) ;
 int schedule_work (int *) ;
 int srpt_client ;

__attribute__((used)) static void srpt_event_handler(struct ib_event_handler *handler,
          struct ib_event *event)
{
 struct srpt_device *sdev;
 struct srpt_port *sport;
 u8 port_num;

 sdev = ib_get_client_data(event->device, &srpt_client);
 if (!sdev || sdev->device != event->device)
  return;

 pr_debug("ASYNC event= %d on device= %s\n", event->event,
   dev_name(&sdev->device->dev));

 switch (event->event) {
 case 129:
  port_num = event->element.port_num - 1;
  if (port_num < sdev->device->phys_port_cnt) {
   sport = &sdev->port[port_num];
   sport->lid = 0;
   sport->sm_lid = 0;
  } else {
   WARN(1, "event %d: port_num %d out of range 1..%d\n",
        event->event, port_num + 1,
        sdev->device->phys_port_cnt);
  }
  break;
 case 130:
 case 132:
 case 131:
 case 128:
 case 134:
 case 133:

  port_num = event->element.port_num - 1;
  if (port_num < sdev->device->phys_port_cnt) {
   sport = &sdev->port[port_num];
   if (!sport->lid && !sport->sm_lid)
    schedule_work(&sport->work);
  } else {
   WARN(1, "event %d: port_num %d out of range 1..%d\n",
        event->event, port_num + 1,
        sdev->device->phys_port_cnt);
  }
  break;
 default:
  pr_err("received unrecognized IB event %d\n", event->event);
  break;
 }
}
