
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_sw_trigger_type {int owner; } ;


 struct iio_sw_trigger_type* __iio_find_sw_trigger_type (char const*,int ) ;
 int iio_trigger_types_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (char const*) ;
 int try_module_get (int ) ;

__attribute__((used)) static
struct iio_sw_trigger_type *iio_get_sw_trigger_type(const char *name)
{
 struct iio_sw_trigger_type *t;

 mutex_lock(&iio_trigger_types_lock);
 t = __iio_find_sw_trigger_type(name, strlen(name));
 if (t && !try_module_get(t->owner))
  t = ((void*)0);
 mutex_unlock(&iio_trigger_types_lock);

 return t;
}
