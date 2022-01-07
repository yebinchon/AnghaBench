
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;


 int VCNL4035_MODE_ALS_DISABLE ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 int iio_priv (struct iio_dev*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_dont_use_autosuspend (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int vcnl4035_set_als_power_state (int ,int ) ;

__attribute__((used)) static int vcnl4035_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);

 pm_runtime_dont_use_autosuspend(&client->dev);
 pm_runtime_disable(&client->dev);
 iio_device_unregister(indio_dev);
 pm_runtime_set_suspended(&client->dev);

 return vcnl4035_set_als_power_state(iio_priv(indio_dev),
     VCNL4035_MODE_ALS_DISABLE);
}
