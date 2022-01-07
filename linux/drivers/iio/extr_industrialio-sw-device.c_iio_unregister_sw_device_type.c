
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_sw_device_type {int group; int list; int name; } ;


 struct iio_sw_device_type* __iio_find_sw_device_type (int ,int ) ;
 int configfs_unregister_default_group (int ) ;
 int iio_device_types_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (int ) ;

void iio_unregister_sw_device_type(struct iio_sw_device_type *dt)
{
 struct iio_sw_device_type *iter;

 mutex_lock(&iio_device_types_lock);
 iter = __iio_find_sw_device_type(dt->name, strlen(dt->name));
 if (iter)
  list_del(&dt->list);
 mutex_unlock(&iio_device_types_lock);

 configfs_unregister_default_group(dt->group);
}
