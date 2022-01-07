
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30102_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct max30102_data* iio_priv (struct iio_dev*) ;
 int max30102_set_power (struct max30102_data*,int) ;

__attribute__((used)) static int max30102_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct max30102_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 max30102_set_power(data, 0);

 return 0;
}
