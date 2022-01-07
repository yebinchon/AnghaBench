
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dev; } ;


 int dev_dbg (int *,char*) ;
 int iio_push_to_buffers (struct iio_dev*,void const*) ;

__attribute__((used)) static void hid_sensor_push_data(struct iio_dev *indio_dev, const void *data)
{
 dev_dbg(&indio_dev->dev, "hid_sensor_push_data\n");
 iio_push_to_buffers(indio_dev, data);
}
