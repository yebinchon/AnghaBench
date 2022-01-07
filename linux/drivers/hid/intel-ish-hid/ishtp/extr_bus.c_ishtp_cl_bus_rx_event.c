
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_device {int event_work; scalar_t__ event_cb; } ;


 int schedule_work (int *) ;

void ishtp_cl_bus_rx_event(struct ishtp_cl_device *device)
{
 if (!device || !device->event_cb)
  return;

 if (device->event_cb)
  schedule_work(&device->event_work);
}
