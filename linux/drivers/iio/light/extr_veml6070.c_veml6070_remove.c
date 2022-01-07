
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veml6070_data {int client2; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct veml6070_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int veml6070_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct veml6070_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 i2c_unregister_device(data->client2);

 return 0;
}
