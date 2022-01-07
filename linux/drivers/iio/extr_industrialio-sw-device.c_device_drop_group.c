
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_sw_device {int dummy; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;


 int config_item_put (struct config_item*) ;
 int iio_sw_device_destroy (struct iio_sw_device*) ;
 struct iio_sw_device* to_iio_sw_device (struct config_item*) ;

__attribute__((used)) static void device_drop_group(struct config_group *group,
         struct config_item *item)
{
 struct iio_sw_device *d = to_iio_sw_device(item);

 iio_sw_device_destroy(d);
 config_item_put(item);
}
