
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dev; } ;
typedef int int64_t ;


 int dev_dbg (int *,char*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,void*,int ) ;

__attribute__((used)) static void hid_sensor_push_data(struct iio_dev *indio_dev, void *data,
     int len, int64_t timestamp)
{
 dev_dbg(&indio_dev->dev, "hid_sensor_push_data\n");
 iio_push_to_buffers_with_timestamp(indio_dev, data, timestamp);
}
