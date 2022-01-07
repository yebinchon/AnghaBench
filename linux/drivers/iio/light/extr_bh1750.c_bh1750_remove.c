
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct bh1750_data {int lock; } ;


 int BH1750_POWER_DOWN ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct bh1750_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bh1750_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct bh1750_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 mutex_lock(&data->lock);
 i2c_smbus_write_byte(client, BH1750_POWER_DOWN);
 mutex_unlock(&data->lock);

 return 0;
}
