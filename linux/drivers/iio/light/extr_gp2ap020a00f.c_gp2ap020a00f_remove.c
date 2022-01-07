
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dev; } ;
struct i2c_client {int irq; } ;
struct gp2ap020a00f_data {int vled_reg; int trig; } ;


 int GP2AP020A00F_OPMODE_SHUTDOWN ;
 int dev_err (int *,char*) ;
 int free_irq (int ,struct iio_dev*) ;
 int gp2ap020a00f_set_operation_mode (struct gp2ap020a00f_data*,int ) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct gp2ap020a00f_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_unregister (int ) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int gp2ap020a00f_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct gp2ap020a00f_data *data = iio_priv(indio_dev);
 int err;

 err = gp2ap020a00f_set_operation_mode(data,
     GP2AP020A00F_OPMODE_SHUTDOWN);
 if (err < 0)
  dev_err(&indio_dev->dev, "Failed to power off the device.\n");

 iio_device_unregister(indio_dev);
 iio_trigger_unregister(data->trig);
 free_irq(client->irq, indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);
 regulator_disable(data->vled_reg);

 return 0;
}
