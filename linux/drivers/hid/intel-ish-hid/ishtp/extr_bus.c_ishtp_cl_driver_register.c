
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {int * bus; struct module* owner; int name; } ;
struct ishtp_cl_driver {TYPE_1__ driver; int name; } ;


 int ENODEV ;
 int driver_register (TYPE_1__*) ;
 int ishtp_cl_bus_type ;
 int ishtp_device_ready ;

int ishtp_cl_driver_register(struct ishtp_cl_driver *driver,
        struct module *owner)
{
 int err;

 if (!ishtp_device_ready)
  return -ENODEV;

 driver->driver.name = driver->name;
 driver->driver.owner = owner;
 driver->driver.bus = &ishtp_cl_bus_type;

 err = driver_register(&driver->driver);
 if (err)
  return err;

 return 0;
}
