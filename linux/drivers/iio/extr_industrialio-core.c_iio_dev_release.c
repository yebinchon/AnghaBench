
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int modes; int id; int buffer; } ;
struct device {int dummy; } ;


 int INDIO_ALL_TRIGGERED_MODES ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int ida_simple_remove (int *,int ) ;
 int iio_buffer_put (int ) ;
 int iio_device_unregister_eventset (struct iio_dev*) ;
 int iio_device_unregister_sysfs (struct iio_dev*) ;
 int iio_device_unregister_trigger_consumer (struct iio_dev*) ;
 int iio_ida ;
 int kfree (struct iio_dev*) ;

__attribute__((used)) static void iio_dev_release(struct device *device)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(device);
 if (indio_dev->modes & INDIO_ALL_TRIGGERED_MODES)
  iio_device_unregister_trigger_consumer(indio_dev);
 iio_device_unregister_eventset(indio_dev);
 iio_device_unregister_sysfs(indio_dev);

 iio_buffer_put(indio_dev->buffer);

 ida_simple_remove(&iio_ida, indio_dev->id);
 kfree(indio_dev);
}
