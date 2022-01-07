
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;
struct apds9960_data {int dummy; } ;


 int apds9960_set_powermode (struct apds9960_data*,int ) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct apds9960_data* iio_priv (struct iio_dev*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;

__attribute__((used)) static int apds9960_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct apds9960_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);
 apds9960_set_powermode(data, 0);

 return 0;
}
