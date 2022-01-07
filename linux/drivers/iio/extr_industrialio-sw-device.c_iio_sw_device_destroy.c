
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_sw_device_type {int owner; TYPE_1__* ops; } ;
struct iio_sw_device {struct iio_sw_device_type* device_type; } ;
struct TYPE_2__ {int (* remove ) (struct iio_sw_device*) ;} ;


 int module_put (int ) ;
 int stub1 (struct iio_sw_device*) ;

void iio_sw_device_destroy(struct iio_sw_device *d)
{
 struct iio_sw_device_type *dt = d->device_type;

 dt->ops->remove(d);
 module_put(dt->owner);
}
