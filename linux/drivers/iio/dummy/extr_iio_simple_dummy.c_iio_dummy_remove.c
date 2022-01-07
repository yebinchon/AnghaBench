
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_sw_device {struct iio_dev* device; } ;
struct iio_dev {int name; } ;


 int iio_device_free (struct iio_dev*) ;
 int iio_device_unregister (struct iio_dev*) ;
 int iio_simple_dummy_events_unregister (struct iio_dev*) ;
 int iio_simple_dummy_unconfigure_buffer (struct iio_dev*) ;
 int kfree (int ) ;

__attribute__((used)) static int iio_dummy_remove(struct iio_sw_device *swd)
{






 struct iio_dev *indio_dev = swd->device;


 iio_device_unregister(indio_dev);




 iio_simple_dummy_unconfigure_buffer(indio_dev);

 iio_simple_dummy_events_unregister(indio_dev);


 kfree(indio_dev->name);
 iio_device_free(indio_dev);

 return 0;
}
