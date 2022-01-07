
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_driver {int list; int driver; } ;


 int driver_unregister (int *) ;
 int drivers_lock ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void host1x_driver_unregister(struct host1x_driver *driver)
{
 driver_unregister(&driver->driver);

 mutex_lock(&drivers_lock);
 list_del_init(&driver->list);
 mutex_unlock(&drivers_lock);
}
