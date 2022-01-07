
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capi_driver {int list; } ;


 int capi_drivers ;
 int capi_drivers_lock ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void register_capi_driver(struct capi_driver *driver)
{
 mutex_lock(&capi_drivers_lock);
 list_add_tail(&driver->list, &capi_drivers);
 mutex_unlock(&capi_drivers_lock);
}
