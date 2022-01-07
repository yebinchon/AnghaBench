
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltc2485_data {int time_prev; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; int name; TYPE_1__ dev; } ;
struct i2c_device_id {int name; } ;
struct i2c_client {int dev; int adapter; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 int INDIO_DIRECT_MODE ;
 int LTC2485_CONFIG_DEFAULT ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 struct ltc2485_data* iio_priv (struct iio_dev*) ;
 int ktime_get () ;
 int ltc2485_channel ;
 int ltc2485_info ;

__attribute__((used)) static int ltc2485_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct ltc2485_data *data;
 int ret;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C |
         I2C_FUNC_SMBUS_WRITE_BYTE))
  return -EOPNOTSUPP;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 indio_dev->dev.parent = &client->dev;
 indio_dev->name = id->name;
 indio_dev->info = &ltc2485_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = ltc2485_channel;
 indio_dev->num_channels = ARRAY_SIZE(ltc2485_channel);

 ret = i2c_smbus_write_byte(data->client, LTC2485_CONFIG_DEFAULT);
 if (ret < 0)
  return ret;

 data->time_prev = ktime_get();

 return devm_iio_device_register(&client->dev, indio_dev);
}
