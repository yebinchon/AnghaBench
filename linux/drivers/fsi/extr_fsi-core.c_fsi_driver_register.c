
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_driver {int drv; int id_table; } ;


 int EINVAL ;
 int driver_register (int *) ;

int fsi_driver_register(struct fsi_driver *fsi_drv)
{
 if (!fsi_drv)
  return -EINVAL;
 if (!fsi_drv->id_table)
  return -EINVAL;

 return driver_register(&fsi_drv->drv);
}
