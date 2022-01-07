
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_sw_device_type {int owner; } ;


 struct iio_sw_device_type* __iio_find_sw_device_type (char const*,int ) ;
 int iio_device_types_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (char const*) ;
 int try_module_get (int ) ;

__attribute__((used)) static
struct iio_sw_device_type *iio_get_sw_device_type(const char *name)
{
 struct iio_sw_device_type *dt;

 mutex_lock(&iio_device_types_lock);
 dt = __iio_find_sw_device_type(name, strlen(name));
 if (dt && !try_module_get(dt->owner))
  dt = ((void*)0);
 mutex_unlock(&iio_device_types_lock);

 return dt;
}
