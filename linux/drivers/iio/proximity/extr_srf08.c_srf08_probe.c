
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct srf08_data {int sensor_type; TYPE_2__* chip_info; int lock; struct i2c_client* client; } ;
struct TYPE_5__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; TYPE_1__ dev; int name; int * info; } ;
struct i2c_device_id {int name; scalar_t__ driver_data; } ;
struct i2c_client {int dev; int adapter; } ;
typedef enum srf08_sensor_type { ____Placeholder_srf08_sensor_type } srf08_sensor_type ;
struct TYPE_6__ {scalar_t__ sensitivity_default; scalar_t__ range_default; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int I2C_FUNC_SMBUS_READ_BYTE_DATA ;
 int I2C_FUNC_SMBUS_READ_WORD_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;
 int INDIO_DIRECT_MODE ;



 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_iio_triggered_buffer_setup (int *,struct iio_dev*,int ,int ,int *) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct srf08_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 TYPE_2__ srf02_chip_info ;
 int srf02_info ;
 int srf08_channels ;
 TYPE_2__ srf08_chip_info ;
 int srf08_info ;
 int srf08_trigger_handler ;
 int srf08_write_range_mm (struct srf08_data*,scalar_t__) ;
 int srf08_write_sensitivity (struct srf08_data*,scalar_t__) ;
 TYPE_2__ srf10_chip_info ;

__attribute__((used)) static int srf08_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct srf08_data *data;
 int ret;

 if (!i2c_check_functionality(client->adapter,
     I2C_FUNC_SMBUS_READ_BYTE_DATA |
     I2C_FUNC_SMBUS_WRITE_BYTE_DATA |
     I2C_FUNC_SMBUS_READ_WORD_DATA))
  return -ENODEV;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 data->sensor_type = (enum srf08_sensor_type)id->driver_data;

 switch (data->sensor_type) {
 case 130:
  data->chip_info = &srf02_chip_info;
  indio_dev->info = &srf02_info;
  break;
 case 129:
  data->chip_info = &srf08_chip_info;
  indio_dev->info = &srf08_info;
  break;
 case 128:
  data->chip_info = &srf10_chip_info;
  indio_dev->info = &srf08_info;
  break;
 default:
  return -EINVAL;
 }

 indio_dev->name = id->name;
 indio_dev->dev.parent = &client->dev;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = srf08_channels;
 indio_dev->num_channels = ARRAY_SIZE(srf08_channels);

 mutex_init(&data->lock);

 ret = devm_iio_triggered_buffer_setup(&client->dev, indio_dev,
   iio_pollfunc_store_time, srf08_trigger_handler, ((void*)0));
 if (ret < 0) {
  dev_err(&client->dev, "setup of iio triggered buffer failed\n");
  return ret;
 }

 if (data->chip_info->range_default) {







  ret = srf08_write_range_mm(data,
     data->chip_info->range_default);
  if (ret < 0)
   return ret;
 }

 if (data->chip_info->sensitivity_default) {







  ret = srf08_write_sensitivity(data,
    data->chip_info->sensitivity_default);
  if (ret < 0)
   return ret;
 }

 return devm_iio_device_register(&client->dev, indio_dev);
}
