
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8452_data {int vdd_reg; int vddio_reg; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct mma8452_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int mma8452_standby (struct mma8452_data*) ;
 int mma8452_trigger_cleanup (struct iio_dev*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int mma8452_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct mma8452_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);
 pm_runtime_put_noidle(&client->dev);

 iio_triggered_buffer_cleanup(indio_dev);
 mma8452_trigger_cleanup(indio_dev);
 mma8452_standby(iio_priv(indio_dev));

 regulator_disable(data->vddio_reg);
 regulator_disable(data->vdd_reg);

 return 0;
}
