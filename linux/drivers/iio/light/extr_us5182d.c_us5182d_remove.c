
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us5182d_data {int dummy; } ;
struct i2c_client {int dev; } ;


 int US5182D_CFG0_SHUTDOWN_EN ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (int ) ;
 struct us5182d_data* iio_priv (int ) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int us5182d_shutdown_en (struct us5182d_data*,int ) ;

__attribute__((used)) static int us5182d_remove(struct i2c_client *client)
{
 struct us5182d_data *data = iio_priv(i2c_get_clientdata(client));

 iio_device_unregister(i2c_get_clientdata(client));

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);

 return us5182d_shutdown_en(data, US5182D_CFG0_SHUTDOWN_EN);
}
