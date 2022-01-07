
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_driver {int driver; } ;


 int driver_unregister (int *) ;

void ishtp_cl_driver_unregister(struct ishtp_cl_driver *driver)
{
 driver_unregister(&driver->driver);
}
