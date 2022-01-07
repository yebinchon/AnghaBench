
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmp006_data {int config; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int * info; int modes; int name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int INDIO_DIRECT_MODE ;
 int TMP006_CONFIG ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 int iio_device_register (struct iio_dev*) ;
 struct tmp006_data* iio_priv (struct iio_dev*) ;
 int tmp006_channels ;
 int tmp006_check_identification (struct i2c_client*) ;
 int tmp006_info ;

__attribute__((used)) static int tmp006_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct tmp006_data *data;
 int ret;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_WORD_DATA))
  return -EOPNOTSUPP;

 if (!tmp006_check_identification(client)) {
  dev_err(&client->dev, "no TMP006 sensor\n");
  return -ENODEV;
 }

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 indio_dev->dev.parent = &client->dev;
 indio_dev->name = dev_name(&client->dev);
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &tmp006_info;

 indio_dev->channels = tmp006_channels;
 indio_dev->num_channels = ARRAY_SIZE(tmp006_channels);

 ret = i2c_smbus_read_word_swapped(data->client, TMP006_CONFIG);
 if (ret < 0)
  return ret;
 data->config = ret;

 return iio_device_register(indio_dev);
}
