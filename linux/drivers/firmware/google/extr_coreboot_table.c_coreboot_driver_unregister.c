
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreboot_driver {int drv; } ;


 int driver_unregister (int *) ;

void coreboot_driver_unregister(struct coreboot_driver *driver)
{
 driver_unregister(&driver->drv);
}
