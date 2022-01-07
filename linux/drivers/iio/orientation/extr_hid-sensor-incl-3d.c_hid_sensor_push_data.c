
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dev; } ;


 int dev_dbg (int *,char*) ;
 int iio_push_to_buffers (struct iio_dev*,int *) ;

__attribute__((used)) static void hid_sensor_push_data(struct iio_dev *indio_dev, u8 *data, int len)
{
 dev_dbg(&indio_dev->dev, "hid_sensor_push_data\n");
 iio_push_to_buffers(indio_dev, (u8 *)data);
}
