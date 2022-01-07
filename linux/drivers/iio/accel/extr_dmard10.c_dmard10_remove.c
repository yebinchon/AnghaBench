
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int dmard10_shutdown (struct i2c_client*) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;

__attribute__((used)) static int dmard10_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);

 iio_device_unregister(indio_dev);

 return dmard10_shutdown(client);
}
