
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pa12203001_data {int lock; int map; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PA12203001_CHIP_DISABLE ;
 int PA12203001_CHIP_ENABLE ;
 int PA12203001_DRIVER_NAME ;
 int PA12203001_SLEEP_DELAY_MS ;
 int PTR_ERR (int ) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct pa12203001_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int pa12203001_channels ;
 int pa12203001_info ;
 int pa12203001_init (struct iio_dev*) ;
 int pa12203001_power_chip (struct iio_dev*,int ) ;
 int pa12203001_regmap_config ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int ) ;
 int pm_runtime_use_autosuspend (int *) ;

__attribute__((used)) static int pa12203001_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct pa12203001_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev,
       sizeof(struct pa12203001_data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 data->map = devm_regmap_init_i2c(client, &pa12203001_regmap_config);
 if (IS_ERR(data->map))
  return PTR_ERR(data->map);

 mutex_init(&data->lock);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &pa12203001_info;
 indio_dev->name = PA12203001_DRIVER_NAME;
 indio_dev->channels = pa12203001_channels;
 indio_dev->num_channels = ARRAY_SIZE(pa12203001_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = pa12203001_init(indio_dev);
 if (ret < 0)
  return ret;

 ret = pa12203001_power_chip(indio_dev, PA12203001_CHIP_ENABLE);
 if (ret < 0)
  return ret;

 ret = pm_runtime_set_active(&client->dev);
 if (ret < 0)
  goto out_err;

 pm_runtime_enable(&client->dev);
 pm_runtime_set_autosuspend_delay(&client->dev,
      PA12203001_SLEEP_DELAY_MS);
 pm_runtime_use_autosuspend(&client->dev);

 ret = iio_device_register(indio_dev);
 if (ret < 0)
  goto out_err;

 return 0;

out_err:
 pa12203001_power_chip(indio_dev, PA12203001_CHIP_DISABLE);
 return ret;
}
