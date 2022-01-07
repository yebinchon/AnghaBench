
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lidar_data {int i2c_enabled; struct iio_dev* indio_dev; struct i2c_client* client; int xfer; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; TYPE_1__ dev; int num_channels; int channels; int name; int * info; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_BYTE ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int INDIO_DIRECT_MODE ;
 int LIDAR_DRV_NAME ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 scalar_t__ i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct lidar_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int lidar_channels ;
 int lidar_i2c_xfer ;
 int lidar_info ;
 int lidar_smbus_xfer ;
 int lidar_trigger_handler ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_idle (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int) ;
 int pm_runtime_use_autosuspend (int *) ;

__attribute__((used)) static int lidar_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct lidar_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;
 data = iio_priv(indio_dev);

 if (i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  data->xfer = lidar_i2c_xfer;
  data->i2c_enabled = 1;
 } else if (i2c_check_functionality(client->adapter,
    I2C_FUNC_SMBUS_WORD_DATA | I2C_FUNC_SMBUS_BYTE))
  data->xfer = lidar_smbus_xfer;
 else
  return -EOPNOTSUPP;

 indio_dev->info = &lidar_info;
 indio_dev->name = LIDAR_DRV_NAME;
 indio_dev->channels = lidar_channels;
 indio_dev->num_channels = ARRAY_SIZE(lidar_channels);
 indio_dev->dev.parent = &client->dev;
 indio_dev->modes = INDIO_DIRECT_MODE;

 i2c_set_clientdata(client, indio_dev);

 data->client = client;
 data->indio_dev = indio_dev;

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
      lidar_trigger_handler, ((void*)0));
 if (ret)
  return ret;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_unreg_buffer;

 pm_runtime_set_autosuspend_delay(&client->dev, 1000);
 pm_runtime_use_autosuspend(&client->dev);

 ret = pm_runtime_set_active(&client->dev);
 if (ret)
  goto error_unreg_buffer;
 pm_runtime_enable(&client->dev);
 pm_runtime_idle(&client->dev);

 return 0;

error_unreg_buffer:
 iio_triggered_buffer_cleanup(indio_dev);

 return ret;
}
