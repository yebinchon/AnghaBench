
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_driver {int driver; } ;


 int driver_unregister (int *) ;

void ipack_driver_unregister(struct ipack_driver *edrv)
{
 driver_unregister(&edrv->driver);
}
