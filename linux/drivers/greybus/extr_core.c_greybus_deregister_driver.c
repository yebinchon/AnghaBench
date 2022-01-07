
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct greybus_driver {int driver; } ;


 int driver_unregister (int *) ;

void greybus_deregister_driver(struct greybus_driver *driver)
{
 driver_unregister(&driver->driver);
}
