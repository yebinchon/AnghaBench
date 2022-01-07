
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_sw_device_type {int owner; TYPE_1__* ops; } ;
struct iio_sw_device {struct iio_sw_device_type* device_type; } ;
struct TYPE_2__ {struct iio_sw_device* (* probe ) (char const*) ;} ;


 int EINVAL ;
 struct iio_sw_device* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct iio_sw_device*) ;
 struct iio_sw_device_type* iio_get_sw_device_type (char const*) ;
 int module_put (int ) ;
 int pr_err (char*,char const*) ;
 struct iio_sw_device* stub1 (char const*) ;

struct iio_sw_device *iio_sw_device_create(const char *type, const char *name)
{
 struct iio_sw_device *d;
 struct iio_sw_device_type *dt;

 dt = iio_get_sw_device_type(type);
 if (!dt) {
  pr_err("Invalid device type: %s\n", type);
  return ERR_PTR(-EINVAL);
 }
 d = dt->ops->probe(name);
 if (IS_ERR(d))
  goto out_module_put;

 d->device_type = dt;

 return d;
out_module_put:
 module_put(dt->owner);
 return d;
}
