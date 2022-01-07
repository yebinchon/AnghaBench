
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx90614_data {scalar_t__ wakeup_gpio; int lock; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; void* channels; int * info; int modes; int name; TYPE_1__ dev; } ;
struct i2c_device_id {int name; } ;
struct i2c_client {int dev; int adapter; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int INDIO_DIRECT_MODE ;
 int MLX90614_AUTOSLEEP_DELAY ;
 int dev_dbg (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct mlx90614_data* iio_priv (struct iio_dev*) ;
 void* mlx90614_channels ;
 int mlx90614_info ;
 int mlx90614_probe_num_ir_sensors (struct i2c_client*) ;
 scalar_t__ mlx90614_probe_wakeup (struct i2c_client*) ;
 int mlx90614_wakeup (struct mlx90614_data*) ;
 int mutex_init (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int ) ;
 int pm_runtime_use_autosuspend (int *) ;

__attribute__((used)) static int mlx90614_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct mlx90614_data *data;
 int ret;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_WORD_DATA))
  return -EOPNOTSUPP;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 mutex_init(&data->lock);
 data->wakeup_gpio = mlx90614_probe_wakeup(client);

 mlx90614_wakeup(data);

 indio_dev->dev.parent = &client->dev;
 indio_dev->name = id->name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &mlx90614_info;

 ret = mlx90614_probe_num_ir_sensors(client);
 switch (ret) {
 case 0:
  dev_dbg(&client->dev, "Found single sensor");
  indio_dev->channels = mlx90614_channels;
  indio_dev->num_channels = 2;
  break;
 case 1:
  dev_dbg(&client->dev, "Found dual sensor");
  indio_dev->channels = mlx90614_channels;
  indio_dev->num_channels = 3;
  break;
 default:
  return ret;
 }

 if (data->wakeup_gpio) {
  pm_runtime_set_autosuspend_delay(&client->dev,
       MLX90614_AUTOSLEEP_DELAY);
  pm_runtime_use_autosuspend(&client->dev);
  pm_runtime_set_active(&client->dev);
  pm_runtime_enable(&client->dev);
 }

 return iio_device_register(indio_dev);
}
