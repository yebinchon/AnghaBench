
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_driver {int drv; } ;


 int driver_unregister (int *) ;

void fsi_driver_unregister(struct fsi_driver *fsi_drv)
{
 driver_unregister(&fsi_drv->drv);
}
