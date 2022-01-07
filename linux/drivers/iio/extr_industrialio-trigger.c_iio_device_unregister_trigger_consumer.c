
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {scalar_t__ trig; } ;


 int iio_trigger_put (scalar_t__) ;

void iio_device_unregister_trigger_consumer(struct iio_dev *indio_dev)
{

 if (indio_dev->trig)
  iio_trigger_put(indio_dev->trig);
}
