
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 int iio_map_array_unregister (struct iio_dev*) ;
 int m62332_set_value (struct iio_dev*,int ,int) ;

__attribute__((used)) static int m62332_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);

 iio_device_unregister(indio_dev);
 iio_map_array_unregister(indio_dev);
 m62332_set_value(indio_dev, 0, 0);
 m62332_set_value(indio_dev, 0, 1);

 return 0;
}
