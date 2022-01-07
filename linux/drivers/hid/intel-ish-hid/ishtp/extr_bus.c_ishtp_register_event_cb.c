
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_device {void (* event_cb ) (struct ishtp_cl_device*) ;int event_work; } ;


 int EALREADY ;
 int INIT_WORK (int *,int ) ;
 int ishtp_bus_event_work ;

int ishtp_register_event_cb(struct ishtp_cl_device *device,
 void (*event_cb)(struct ishtp_cl_device *))
{
 if (device->event_cb)
  return -EALREADY;

 device->event_cb = event_cb;
 INIT_WORK(&device->event_work, ishtp_bus_event_work);

 return 0;
}
