
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2583_chip {int dummy; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;


 int TSL2583_CNTL_PWR_OFF ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct tsl2583_chip* iio_priv (struct iio_dev*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int tsl2583_set_power_state (struct tsl2583_chip*,int ) ;

__attribute__((used)) static int tsl2583_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct tsl2583_chip *chip = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);
 pm_runtime_put_noidle(&client->dev);

 return tsl2583_set_power_state(chip, TSL2583_CNTL_PWR_OFF);
}
