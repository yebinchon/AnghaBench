
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_sw_device_type {int group; int name; int list; } ;


 int EBUSY ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct iio_sw_device_type* __iio_find_sw_device_type (int ,int ) ;
 int configfs_register_default_group (int ,int ,int *) ;
 int iio_device_type_group_type ;
 int iio_device_types_list ;
 int iio_device_types_lock ;
 int iio_devices_group ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (int ) ;

int iio_register_sw_device_type(struct iio_sw_device_type *d)
{
 struct iio_sw_device_type *iter;
 int ret = 0;

 mutex_lock(&iio_device_types_lock);
 iter = __iio_find_sw_device_type(d->name, strlen(d->name));
 if (iter)
  ret = -EBUSY;
 else
  list_add_tail(&d->list, &iio_device_types_list);
 mutex_unlock(&iio_device_types_lock);

 if (ret)
  return ret;

 d->group = configfs_register_default_group(iio_devices_group, d->name,
      &iio_device_type_group_type);
 if (IS_ERR(d->group))
  ret = PTR_ERR(d->group);

 return ret;
}
