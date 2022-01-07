
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si7005_data {int config; int lock; struct i2c_client* client; } ;
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
 int SI7005_CONFIG ;
 int SI7005_ID ;
 int SI7005_ID_7005 ;
 int SI7005_ID_7015 ;
 int dev_name (int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct si7005_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int si7005_channels ;
 int si7005_info ;

__attribute__((used)) static int si7005_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct si7005_data *data;
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

 indio_dev->dev.parent = &client->dev;
 indio_dev->name = dev_name(&client->dev);
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &si7005_info;

 indio_dev->channels = si7005_channels;
 indio_dev->num_channels = ARRAY_SIZE(si7005_channels);

 ret = i2c_smbus_read_byte_data(client, SI7005_ID);
 if (ret < 0)
  return ret;
 if (ret != SI7005_ID_7005 && ret != SI7005_ID_7015)
  return -ENODEV;

 ret = i2c_smbus_read_byte_data(client, SI7005_CONFIG);
 if (ret < 0)
  return ret;
 data->config = ret;

 return devm_iio_device_register(&client->dev, indio_dev);
}
