
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_driver {int driver; } ;


 int driver_unregister (int *) ;

void i3c_driver_unregister(struct i3c_driver *drv)
{
 driver_unregister(&drv->driver);
}
