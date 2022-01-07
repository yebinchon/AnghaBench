
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;
struct ak8974 {int regs; } ;


 int AK8974_PWR_OFF ;
 int ARRAY_SIZE (int ) ;
 int ak8974_set_power (struct ak8974*,int ) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ak8974* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int ak8974_remove(struct i2c_client *i2c)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(i2c);
 struct ak8974 *ak8974 = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);
 pm_runtime_get_sync(&i2c->dev);
 pm_runtime_put_noidle(&i2c->dev);
 pm_runtime_disable(&i2c->dev);
 ak8974_set_power(ak8974, AK8974_PWR_OFF);
 regulator_bulk_disable(ARRAY_SIZE(ak8974->regs), ak8974->regs);

 return 0;
}
